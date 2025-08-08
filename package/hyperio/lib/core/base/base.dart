// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, empty_catches

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */

import 'dart:async';
import 'dart:io' show SecurityContext, WebSocket;

import 'package:hyperio/core/extensions/request_helpers.dart';
import 'package:hyperio/core/http/http.dart';
import 'package:hyperio/core/http_route/http_route.dart';
import 'package:hyperio/core/type_handlers/type_handler.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef HyperioAzkadevRouteOnNotFoundFunction = FutureOr Function(
  HyperioAzkadevHttpRequest req,
  HyperioAzkadevHttpResponse res,
);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef HyperioAzkadevRouteOnErrorFunction = FutureOr Function(
  HyperioAzkadevHttpRequest req,
  HyperioAzkadevHttpResponse res,
  Object error,
  StackTrace stackTrace,
);

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
/// HyperioAzkadevUncompleteDocumentation
enum HyperioAzkadevMethodType {
  /// HyperioAzkadevUncompleteDocumentation
  get,

  /// HyperioAzkadevUncompleteDocumentation
  post,

  /// HyperioAzkadevUncompleteDocumentation
  put,

  /// HyperioAzkadevUncompleteDocumentation
  delete,

  /// HyperioAzkadevUncompleteDocumentation
  patch,

  /// HyperioAzkadevUncompleteDocumentation
  options,

  /// HyperioAzkadevUncompleteDocumentation
  head,

  /// HyperioAzkadevUncompleteDocumentation
  copy,

  /// HyperioAzkadevUncompleteDocumentation
  link,

  /// HyperioAzkadevUncompleteDocumentation
  unlink,

  /// HyperioAzkadevUncompleteDocumentation
  purge,

  /// HyperioAzkadevUncompleteDocumentation
  lock,

  /// HyperioAzkadevUncompleteDocumentation
  unlock,

  /// HyperioAzkadevUncompleteDocumentation
  propfind,

  /// HyperioAzkadevUncompleteDocumentation
  view,

  /// HyperioAzkadevUncompleteDocumentation
  all;

  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevMethodType methodFromString(String str) {
    return HyperioAzkadevMethodType.values.firstWhere(
      (method) {
        return method.name == str;
      },
      orElse: () {
        return this;
      },
    );
  }
}

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
/// Indicates the severity of logged message
enum HyperioAzkadevLogType {
  /// HyperioAzkadevUncompleteDocumentation
  debug,

  /// HyperioAzkadevUncompleteDocumentation
  info,

  /// HyperioAzkadevUncompleteDocumentation
  warn,

  /// HyperioAzkadevUncompleteDocumentation
  error,

  /// HyperioAzkadevUncompleteDocumentation
  all,

  /// HyperioAzkadevUncompleteDocumentation
  none;
}

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
/// Throw these exceptions to bubble up an error from sub functions and have them
/// handled automatically for the client
class HyperioAzkadevException implements Exception {
  /// The response to send to the client
  ///
  Object? response;

  /// The statusCode to send to the client
  ///
  int statusCode;

  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevException(this.statusCode, this.response);
}

/// HyperioAzkadevUncompleteDocumentation
class BodyParserException implements HyperioAzkadevException {
  @override
  Object? response;

  @override
  int statusCode;

  /// HyperioAzkadevUncompleteDocumentation

  final Object exception;

  /// HyperioAzkadevUncompleteDocumentation
  final StackTrace stacktrace;

  /// HyperioAzkadevUncompleteDocumentation
  BodyParserException(
      {this.statusCode = 400,
      this.response = 'Bad Request',
      required this.exception,
      required this.stacktrace});
}

/// HyperioAzkadevUncompleteDocumentation
typedef HyperioAzkadevWebSocketFunction = FutureOr<dynamic> Function(
  WebSocket webSocket,
  HyperioAzkadevHttpRequest httpRequest,
  HyperioAzkadevHttpResponse httpResponse,
);

/// HyperioAzkadevUncompleteDocumentation
typedef HyperioAzkadevWebSocketUpdateFunction = FutureOr<dynamic> Function(
  dynamic update,
  WebSocket webSocket,
  HyperioAzkadevHttpRequest httpRequest,
  HyperioAzkadevHttpResponse httpResponse,
);

/// HyperioAzkadevUncompleteDocumentation
typedef HyperioAzkadevWebSocketErrorFunction = FutureOr<dynamic> Function(
  dynamic error,
  WebSocket webSocket,
  HyperioAzkadevHttpRequest httpRequest,
  HyperioAzkadevHttpResponse httpResponse,
);

/// HyperioAzkadevUncompleteDocumentation
class HyperioAzkadevWebSocketConnection {
  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevWebSocketFunction onOpen;

  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevWebSocketFunction onClose;

  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevWebSocketUpdateFunction onMessage;

  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevWebSocketErrorFunction onError;

  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevWebSocketConnection({
    required this.onClose,
    required this.onError,
    required this.onMessage,
    required this.onOpen,
  });
}

/// HyperioAzkadevUncompleteDocumentation
class HyperioAzkadevTcpSocketConnection {
  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevTcpSocketConnection();
}

/// Error thrown when a type handler cannot be found for a returned item
///
class NoTypeHandlerError extends Error {
  /// HyperioAzkadevUncompleteDocumentation
  final dynamic object;

  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevHttpRequest request;

  /// HyperioAzkadevUncompleteDocumentation
  NoTypeHandlerError(this.object, this.request);

  @override
  String toString() =>
      'No type handler found for ${object.runtimeType} / ${object.toString()} \nRoute: ${request.route}\nIf the app is running in production mode, the type name may be minified. Run it in debug mode to resolve';
}

/// Error used by middleware, utils or type handler to elevate
/// a NotFound response.
class NotFoundError extends Error {}

/// HyperioAzkadevUncompleteDocumentation
abstract class HyperioAzkadevBase {
  /// HttpServer instance from the dart:io library
  ///
  /// If there is anything the app can't do, you can do it through here.
  HyperioAzkadevHttpServer? server;

  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevBase get app;

  /// HyperioAzkadevUncompleteDocumentation
  String pathPrefix;

  /// HyperioAzkadevUncompleteDocumentation
  final HyperioAzkadevLogType hyperioLogType;

  /// HyperioAzkadevUncompleteDocumentation
  int simultaneousProcessing;

  /// Optional handler for when a route is not found
  ///
  HyperioAzkadevRouteOnNotFoundFunction? onNotFound;

  /// Optional handler for when the server throws an unhandled error
  ///
  HyperioAzkadevRouteOnErrorFunction? onError;

  /// HyperioAzkadevUncompleteDocumentation
  HyperioAzkadevBase({
    this.pathPrefix = "",
    this.hyperioLogType = HyperioAzkadevLogType.info,
    this.simultaneousProcessing = 1000000000,
    this.onError,
    this.onNotFound,
  });

  /// List of routes
  ///
  /// Generally you don't want to manipulate this array directly, instead add
  /// routes by calling the [get,post,put,delete] methods.
  final routes = <HttpRoute>[];

  /// An array of [TypeHandler] that HyperioAzkadevNative walks through in order to determine
  /// if it can handle a value returned from a route.
  ///
  List<TypeHandler> typeHandlers = <TypeHandler>[];

  /// Writer to handle internal logging.
  ///
  /// It can optionally exchanged with your own logging solution.
  late void Function(dynamic Function() messageFn, HyperioAzkadevLogType type)
      logWriter;

  /// HyperioAzkadevUncompleteDocumentation

  FutureOr<void> ensureInitialized();

  /// HyperioAzkadevUncompleteDocumentation

  String parsePattern(String path) {
    String get_pattern = "";
    if (path == "/") {
      get_pattern = "^${path}\$";
    } else {
      if (!RegExp(r"^(/)").hasMatch(path)) {
        get_pattern = "^/${path}";
      } else {
        get_pattern = path;
      }
    }
    return get_pattern;
  }

  /// HyperioAzkadevUncompleteDocumentation

  void addRoute(HttpRoute route) {
    routes.add(route);
  }

  /// Print out the registered routes to the console
  ///
  /// Helpful to see whats available
  void printRoutes() {
    for (var route in routes) {
      late String methodString;
      switch (route.method) {
        case HyperioAzkadevMethodType.get:
          methodString = '\x1B[33mGET\x1B[0m';
          break;
        case HyperioAzkadevMethodType.post:
          methodString = '\x1B[31mPOST\x1B[0m';
          break;
        case HyperioAzkadevMethodType.put:
          methodString = '\x1B[32mPUT\x1B[0m';
          break;
        case HyperioAzkadevMethodType.delete:
          methodString = '\x1B[34mDELETE\x1B[0m';
          break;
        case HyperioAzkadevMethodType.patch:
          methodString = '\x1B[35mPATCH\x1B[0m';
          break;
        case HyperioAzkadevMethodType.options:
          methodString = '\x1B[36mOPTIONS\x1B[0m';
          break;
        case HyperioAzkadevMethodType.all:
          methodString = '\x1B[37mALL\x1B[0m';
          break;
        case HyperioAzkadevMethodType.head:
          methodString = '\x1B[38mHEAD\x1B[0m';
          break;
        case HyperioAzkadevMethodType.copy:
          methodString = '\x1B[39mCOPY\x1B[0m';
          break;
        case HyperioAzkadevMethodType.link:
          methodString = '\x1B[40mLINK\x1B[0m';
          break;
        case HyperioAzkadevMethodType.unlink:
          methodString = '\x1B[41mUNLINK\x1B[0m';
          break;
        case HyperioAzkadevMethodType.purge:
          methodString = '\x1B[42mPURGE\x1B[0m';
          break;
        case HyperioAzkadevMethodType.lock:
          methodString = '\x1B[43mUNLOCK\x1B[0m';
          break;
        case HyperioAzkadevMethodType.unlock:
          methodString = '\x1B[44mUNLOCK\x1B[0m';
          break;
        case HyperioAzkadevMethodType.propfind:
          methodString = '\x1B[45mPROPFIND\x1B[0m';
          break;
        case HyperioAzkadevMethodType.view:
          methodString = '\x1B[46mVIEW\x1B[0m';
          break;
      }
      print('${route.route} - $methodString');
    }
  }

  /// Create a get route
  ///
  HttpRoute get(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.get, path, callback, middleware);
  }

  /// Create a head route
  ///
  HttpRoute head(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.head, path, callback, middleware);
  }

  /// Create a post route
  ///
  HttpRoute post(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.post, path, callback, middleware);
  }

  /// Create a put route
  HttpRoute put(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.put, path, callback, middleware);
  }

  /// Create a delete route
  ///
  HttpRoute delete(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.delete, path, callback, middleware);
  }

  /// Create a patch route
  ///
  HttpRoute patch(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.patch, path, callback, middleware);
  }

  /// Create an options route
  ///
  HttpRoute options(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.options, path, callback, middleware);
  }

  /// Create a route that listens on all methods
  ///
  HttpRoute all(
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, {
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  }) {
    return createRoute(
        HyperioAzkadevMethodType.all, path, callback, middleware);
  }

  /// HyperioAzkadevUncompleteDocumentation

  HttpRoute createRoute(
    HyperioAzkadevMethodType method,
    String path,
    FutureOr Function(
            HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)
        callback, [
    List<
            FutureOr Function(
                HyperioAzkadevHttpRequest req, HyperioAzkadevHttpResponse res)>
        middleware = const [],
  ]) {
    final route = HttpRoute(
        '${pathPrefix == '' ? '' : '${pathPrefix}/'}$path', callback, method,
        middleware: middleware);
    addRoute(route);
    return route;
  }

  /// HyperioAzkadevUncompleteDocumentation
  HttpRoute websocket({
    required String path,
    required FutureOr<HyperioAzkadevWebSocketConnection> Function() onWebSocket,
  });

  /// HyperioAzkadevUncompleteDocumentation

  void tcpSocket({
    required FutureOr<HyperioAzkadevTcpSocketConnection> Function() onTcpSocket,
  });

  /// Close the server and clean up any resources
  ///
  /// Call this if you are shutting down the server but continuing to run
  /// the app.
  Future<void> close({bool force = true});

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Future<HyperioAzkadevHttpServer> listen({
    int port = 3000,
    dynamic bindIp = '0.0.0.0',
    bool shared = true,
    int backlog = 0,
  });

  /// HyperioAzkadevUncompleteDocumentation
  Future<HyperioAzkadevHttpServer> listenSecure({
    required SecurityContext securityContext,
    int port = 3000,
    dynamic bindIp = '0.0.0.0',
    bool shared = true,
    int backlog = 0,
  });
}
