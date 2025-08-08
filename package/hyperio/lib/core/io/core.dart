import 'dart:async';
import 'dart:io';
import 'package:hyperio/core/base/base.dart';
import 'package:hyperio/core/http/http.dart';
import 'package:hyperio/core/http_route/http_route.dart';

import 'package:hyperio/core/plugins/store_plugin.dart';
import 'package:hyperio/core/route_matcher/route_matcher.dart';
import 'package:hyperio/core/route_param_types/route_param_types.dart';
import 'package:hyperio/package/queue/queue.dart';
import 'package:hyperio/core/type_handlers/type_handlers.dart';
// import 'package:hyperio/native.dart';

/// Server application class
///
/// This is the core of the server application. Generally you would create one
/// for each app.
class HyperioAzkadev extends HyperioAzkadevBase {
  // @override
  @override
  HyperioAzkadev get app => this;

  /// Incoming request queue
  ///
  /// Set the number of simultaneous connections being processed at any one time
  /// in the [simultaneousProcessing] param in the constructor
  Queue requestQueue;

  /// Creates a new HyperioAzkadevNative application.
  ///
  /// The default [logWriter] can be tuned by changing the [logLevel]:
  /// - [HyperioAzkadevLogType.error]: prints errors
  /// - [HyperioAzkadevLogType.warn]: prints errors and warning
  /// - [HyperioAzkadevLogType.info]: prints errors, warning and requests
  /// - [HyperioAzkadevLogType.debug]: prints errors, warning, requests and further details
  ///
  /// *Note: Changing the [logLevel] only effects the default [logWriter].*
  ///
  /// [simultaneousProcessing] is the number of requests doing work at any one
  /// time. If the amount of unprocessed incoming requests exceed this number,
  /// the requests will be queued.
  HyperioAzkadev({
    super.pathPrefix,
    super.hyperioLogType,
    super.simultaneousProcessing,
    super.onNotFound,
    super.onError,
  }) : requestQueue = Queue(parallel: simultaneousProcessing) {
    onError = null;
    ensureInitialized();
  }

  /// Parse request to HyperioAzkadevMethodType enum value.
  static HyperioAzkadevMethodType _parseMethod(
      HyperioAzkadevHttpRequest request) {
    try {
      return HyperioAzkadevMethodType.values
          .byName(request.method.toLowerCase());
    } on ArgumentError {
      return HyperioAzkadevMethodType.get;
    }
  }

  final List<
          void Function(
              HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
      _onDoneListeners = <void Function(
          HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>[];

  bool _isEnsureInitialized = false;

  @override
  void ensureInitialized() {
    if (_isEnsureInitialized) {
      return;
    }
    _isEnsureInitialized = true;
    _registerDefaultParamTypes();
    _registerDefaultTypeHandlers();
    _registerPluginListeners();
    _registerDefaultLogWriter(hyperioLogType);
    return;
  }

  /// Register a listener when a request is complete
  ///
  /// Typically would be used for logging, benchmarking or cleaning up data
  /// used when writing a plugin.
  ///
  Function _registerOnDoneListener(
    void Function(HyperioAzkadevHttpRequest request,
            HyperioAzkadevHttpResponse response)
        listener,
  ) {
    _onDoneListeners.add(listener);
    return listener;
  }

  // /// Dispose of any on done listeners when you are done with them.
  // ///
  // void _removeOnDoneListener(
  //   Function listener,
  // ) {
  //   _onDoneListeners.remove(listener);
  // }

  void _registerDefaultLogWriter(
    HyperioAzkadevLogType logLevel,
  ) {
    logWriter = (dynamic Function() messageFn, type) {
      if (logLevel == HyperioAzkadevLogType.none) {
      } else {
        if (type.index >= logLevel.index) {
          var timestamp = DateTime.now();
          var logType = type.name;
          var message = messageFn().toString();
          print('${timestamp} - ${logType} - ${message}');
        }
      }
    };
  }

  void _registerDefaultTypeHandlers() {
    typeHandlers.addAll(
      [
        stringTypeHandler,
        uint8listTypeHandler,
        listIntTypeHandler,
        binaryStreamTypeHandler,
        jsonListTypeHandler,
        jsonMapTypeHandler,
        jsonNumberTypeHandler,
        jsonBooleanTypeHandler,
        fileTypeHandler,
        directoryTypeHandler,
        websocketTypeHandler,
        serializableTypeHandler,
      ],
    );
  }

  void _registerDefaultParamTypes() {
    HttpRouteParam.paramTypes.addAll(
      [
        IntParamType(),
        UintParamType(),
        DoubleParamType(),
        DateParamType(),
        TimestampParamType(),
        HexParamType(),
        AlphaParamType(),
        UuidParamType(),
      ],
    );
  }

  void _registerPluginListeners() {
    _registerOnDoneListener(storePluginOnDoneHandler);
  }

  /// Function to prevent linting errors.
  ///
  void _unawaited(Future<void> then) {}

  // RouteGroup createRouteGroup(String path) {
  //   return RouteGroup(app, '${pathPrefix == '' ? '' : '$pathPrefix/'}$path');
  // }
  //
  /// Handles and routes an incoming request
  ///
  Future<void> _incomingRequest(HyperioAzkadevHttpRequest request) async {
    /// Expose this HyperioAzkadevNative instance for middleware or other utility functions
    request.store.set('_internal_hyperio', this);

    /// Variable to track the close of the response
    var isDone = false;

    logWriter(() => '${request.method} - ${request.uri.toString()}',
        HyperioAzkadevLogType.info);

    // We track if the response has been resolved in order to exit out early
    // the list of routes (ie the middleware returned)
    _unawaited(request.response.done.then((dynamic _) {
      isDone = true;
      for (var listener in _onDoneListeners) {
        listener(request, request.response);
      }
      logWriter(() => 'Response sent to client', HyperioAzkadevLogType.debug);
    }));

    // Work out all the routes we need to process
    final effectiveMatches = RouteMatcher.match(
        request.uri.toString(), routes, _parseMethod(request));

    try {
      // If there are no effective routes, that means we need to throw a 404
      // or see if there are any static routes to fall back to, otherwise
      // continue and process the routes
      if (effectiveMatches.isEmpty) {
        logWriter(
            () => 'No matching route found.', HyperioAzkadevLogType.debug);
        await _respondNotFound(request, isDone);
      } else {
        /// Tracks if one route is using a wildcard
        var nonWildcardRouteMatch = false;

        // Loop through the routes in the order they are in the routes list
        for (var match in effectiveMatches) {
          if (isDone) {
            break;
          }
          logWriter(() => 'Match route: ${match.route.route}',
              HyperioAzkadevLogType.debug);
          request.store.set('_internal_match', match);
          nonWildcardRouteMatch =
              !match.route.usesWildcardMatcher || nonWildcardRouteMatch;

          /// Loop through any middleware
          for (var middleware in match.route.middleware) {
            // If the request has already completed, exit early.
            if (isDone) {
              break;
            }
            logWriter(() => 'Apply middleware associated with route',
                HyperioAzkadevLogType.debug);
            await _handleResponse(
                await middleware(request, request.response), request);
          }

          /// If the request has already completed, exit early, otherwise process
          /// the primary route callback
          if (isDone) {
            break;
          }
          logWriter(() => 'Execute route callback function',
              HyperioAzkadevLogType.debug);

          /// Nested try catch because if you set the header twice it wasn't
          /// catching an error. This fixes it and its in tests, so if you can
          /// remove it and all the tests pass, cool beans.
          // try {
          await _handleResponse(
              await match.route.callback(request, request.response), request);
          // } catch (e, s) {
          //   logWriter(() => match.route.toString(), HyperioAzkadevLogType.error);
          //   logWriter(() => e, HyperioAzkadevLogType.error);
          //   logWriter(() => s, HyperioAzkadevLogType.error);
          //
          // }
        }

        /// If you got here and isDone is still false, you forgot to close
        /// the response, or you didn't return anything. Either way its an error,
        /// but instead of letting the whole server hang as most frameworks do,
        /// lets at least close the connection out
        ///
        if (!isDone) {
          if (request.response.contentLength == -1) {
            if (nonWildcardRouteMatch == false) {
              await _respondNotFound(request, isDone);
            }
          }
          await request.response.close();
        }
      }
    } on HyperioAzkadevException catch (e) {
      // The user threw a handle HTTP Exception
      try {
        request.response.statusCode = e.statusCode;
        await _handleResponse(e.response, request);
      } on StateError catch (e, s) {
        // It can hit this block if you try to write a header when one is already been raised
        logWriter(() => e, HyperioAzkadevLogType.error);
        logWriter(() => s, HyperioAzkadevLogType.error);
      } catch (e, s) {
        // Catch all other errors, this block may be able to be removed in the future
        logWriter(() => e, HyperioAzkadevLogType.error);
        logWriter(() => s, HyperioAzkadevLogType.error);
      }
    } on NotFoundError catch (_) {
      await _respondNotFound(request, isDone);
    } catch (e, s) {
      // Its all broken, bail (but don't crash)
      logWriter(() => e, HyperioAzkadevLogType.error);
      logWriter(() => s, HyperioAzkadevLogType.error);
      if (onError != null) {
        // Handle the error with a custom response
        request.store.set('_internal_exception', e);
        final dynamic result = await onError!(request, request.response, e, s);
        if (result != null && !isDone) {
          await _handleResponse(result, request);
        }
        await request.response.close();
      } else {
        //Otherwise fall back to a generic 500 error
        try {
          request.response.statusCode = 500;
          request.response.write(e);
          await request.response.close();
        } catch (e, s) {
          logWriter(() => e, HyperioAzkadevLogType.error);
          logWriter(() => s, HyperioAzkadevLogType.error);
          await request.response.close();
        }
      }
    }
  }

  /// Responds request with a NotFound response
  ///
  Future _respondNotFound(
      HyperioAzkadevHttpRequest request, bool isDone) async {
    if (onNotFound != null) {
      // Otherwise check if a custom 404 handler has been provided
      final dynamic result = await onNotFound!(request, request.response);
      if (result != null && !isDone) {
        await _handleResponse(result, request);
      }
      await request.response.close();
    } else {
      // request.response;
      // Otherwise throw a generic 404;
      request.response.statusCode = 404;
      request.response.write('404 not found');
      await request.response.close();
    }
  }

  /// Handle a response by response type
  ///
  /// This is the logic that will handle the response based on what you return.
  ///
  Future<void> _handleResponse(
      dynamic result, HyperioAzkadevHttpRequest request) async {
    if (result != null) {
      var handled = false;
      for (var handler in typeHandlers) {
        if (handler.shouldHandle(result)) {
          logWriter(
              () => 'Apply TypeHandler for result type: ${result.runtimeType}',
              HyperioAzkadevLogType.debug);
          dynamic handlerResult =
              await handler.handler(request, request.response, result);
          // print(handlerResult == false);
          // set false to old
          if (handlerResult != null) {
            handled = true;
            break;
          }
        }
      }
      if (!handled) {
        throw NoTypeHandlerError(result, request);
      }
    }
  }

  /// HyperioAzkadevUncompleteDocumentation
  @override
  HttpRoute websocket({
    required String path,
    required FutureOr<HyperioAzkadevWebSocketConnection> Function() onWebSocket,
  }) {
    return get(
      path,
      (HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res) async {
        final HyperioAzkadevWebSocketConnection hyperioWebSocketConnection =
            await onWebSocket();
        return WebSocketSession(
          onOpen: (webSocket) async {
            await hyperioWebSocketConnection.onOpen(webSocket, req, res);
          },
          onClose: (webSocket) async {
            await hyperioWebSocketConnection.onClose(webSocket, req, res);
          },
          onError: (webSocket, error) async {
            await hyperioWebSocketConnection.onError(
                error, webSocket, req, res);
          },
          onMessage: (webSocket, data) async {
            await hyperioWebSocketConnection.onMessage(
                data, webSocket, req, res);
          },
        );
      },
    );
  }

  /// HyperioAzkadevUncompleteDocumentation

  @override
  void tcpSocket({
    required FutureOr<HyperioAzkadevTcpSocketConnection> Function() onTcpSocket,
  }) {}

  /// Close the server and clean up any resources
  ///
  /// Call this if you are shutting down the server but continuing to run
  /// the app.
  @override
  Future<void> close({bool force = true}) async {
    if (server != null) {
      await server!.close(force: force);
    }
  }

  /// Call this function to fire off the server.
  ///
  ///
  ///
  @override
  Future<HyperioAzkadevHttpServer> listen({
    int port = 3000,
    dynamic bindIp = '0.0.0.0',
    bool shared = true,
    int backlog = 0,
  }) async {
    final server = await HttpServer.bind(
      bindIp,
      port,
      backlog: backlog,
      shared: shared,
    );

    server.idleTimeout = Duration(seconds: 1);

    server.listen((request) {
      requestQueue.add(() async {
        final result = await runZonedGuarded(
          () async {
            return _incomingRequest(request);
          },
          (error, stack) {
            logWriter(
                () => 'Unhandled Error: ${error}', HyperioAzkadevLogType.error);
            logWriter(() => '${stack}', HyperioAzkadevLogType.error);
          },
        );
        return result;
      });
    });

    logWriter(() => 'HTTP Server listening on port ${server.port}',
        HyperioAzkadevLogType.info);
    return this.server = server;
  }

  /// HyperioAzkadevUncompleteDocumentation
  @override
  Future<HyperioAzkadevHttpServer> listenSecure({
    required SecurityContext securityContext,
    int port = 3000,
    dynamic bindIp = '0.0.0.0',
    bool shared = true,
    int backlog = 0,
  }) async {
    final server = await HttpServer.bindSecure(
      bindIp,
      port,
      securityContext,
      backlog: backlog,
      shared: shared,
    );

    server.idleTimeout = Duration(seconds: 1);

    server.listen((request) {
      requestQueue.add(() => _incomingRequest(request));
    });

    logWriter(() => 'HTTP Server listening on port ${server.port}',
        HyperioAzkadevLogType.info);
    return this.server = server;
  }
}
