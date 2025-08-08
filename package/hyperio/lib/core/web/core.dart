import 'dart:async';
import 'dart:io';
import 'package:hyperio/core/base/base.dart';
import 'package:hyperio/core/http/server/web.dart';
// import 'package:hyperio/core/http/server/io.dart';
import 'package:hyperio/core/http_route/http_route.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class HyperioAzkadev extends HyperioAzkadevBase {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HyperioAzkadev({
    super.onError,
    super.onNotFound,
    super.pathPrefix,
    super.hyperioLogType,
    super.simultaneousProcessing,
  });

  @override
  // TODO: implement app
  HyperioAzkadevBase get app => this;

  @override
  Future<void> close({bool force = true}) async {}

  @override
  FutureOr<void> ensureInitialized() async {}

  @override
  Future<HyperioAzkadevHttpServer> listen(
      {int port = 3000,
      bindIp = '0.0.0.0',
      bool shared = true,
      int backlog = 0}) async {
    return HyperioAzkadevHttpServer.bind(bindIp, port);
  }

  @override
  Future<HyperioAzkadevHttpServer> listenSecure(
      {required SecurityContext securityContext,
      int port = 3000,
      bindIp = '0.0.0.0',
      bool shared = true,
      int backlog = 0}) async {
    return HyperioAzkadevHttpServer.bindSecure(bindIp, port, securityContext);
  }

  @override
  void tcpSocket(
      {required FutureOr<HyperioAzkadevTcpSocketConnection> Function()
          onTcpSocket}) {
    // TODO: implement tcpSocket
  }

  @override
  HttpRoute websocket(
      {required String path,
      required FutureOr<HyperioAzkadevWebSocketConnection> Function()
          onWebSocket}) {
    throw UnimplementedError("Not supported");
  }
}
