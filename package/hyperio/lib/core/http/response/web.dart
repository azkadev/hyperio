// ignore_for_file: public_member_api_docs, unused_element

import "dart:convert";
import "dart:io"
    show
        Cookie,
        HttpConnectionInfo,
        HttpHeaders,
        HttpResponse,
        HttpStatus,
        Socket;
import "dart:js_interop";
// import "package:general_universe/dart_universe/io_universe/core/_http_headers_impl.dart";
import "package:hyperio/core/http/headers/web.dart";
import "package:web/web.dart" as web;

class HyperioAzkadevHttpResponse implements HttpResponse {
  final HyperioAzkadevHttpHeaders _httpHeaders = HyperioAzkadevHttpHeaders();
  @override
  bool bufferOutput = false;

  @override
  int contentLength = 0;

  @override
  Duration? deadline;

  @override
  late Encoding encoding;

  @override
  bool persistentConnection = false;

  @override
  String reasonPhrase = "";

  @override
  int statusCode = 200;

  dynamic _content;

  @override
  void add(List<int> data) {
    // TODO: implement add
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    // TODO: implement addError
  }

  @override
  Future addStream(Stream<List<int>> stream) {
    // TODO: implement addStream
    throw UnimplementedError("add");
  }

  @override
  Future close() async {
    final web.ResponseInit responseInit = web.ResponseInit(
      status: statusCode,
      statusText: reasonPhrase,
    );

    final web.Response response = web.Response(
      () {
        if (_content is String) {
          try {
            return _content.toJS;
          } catch (e) {
            return json.encode(json.decode(_content)).toJS;
          }
        } else if (_content is num) {
          return _content.toJS;
        } else if (_content is Map || _content is List) {
          return json.encode(_content).toJS;
        } else {
          return (_content ?? "").toString().toJS;
        }
      }(),
      responseInit,
    );
    {
      _httpHeaders.forEach((key, values) {
        response.headers.set(key, values.join("; "));
      });
      final contentType = _httpHeaders.contentType;
      if (contentType != null) {
        response.headers.set("content-type", contentType.value);
      }
    }
    return response;
  }

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo =>
      throw UnimplementedError("connectionInfo");

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError("Cookie");

  @override
  Future<Socket> detachSocket({bool writeHeaders = true}) {
    // TODO: implement detachSocket
    throw UnimplementedError("detachSocket");
  }

  @override
  // TODO: implement done
  Future get done => throw UnimplementedError("done");

  @override
  Future flush() {
    // TODO: implement flush
    throw UnimplementedError("flush");
  }

  @override
  // TODO: implement headers
  HttpHeaders get headers => _httpHeaders;

  @override
  Future redirect(Uri location,
      {int status = HttpStatus.movedTemporarily}) async {
    return web.Response.redirect(location.toString(), status);
  }

  @override
  void write(Object? object) {
    _content = object;
    // TODO: implement write
  }

  @override
  void writeAll(Iterable objects, [String separator = ""]) {
    // TODO: implement writeAll
  }

  @override
  void writeCharCode(int charCode) {
    // TODO: implement writeCharCode
  }

  @override
  void writeln([Object? object = ""]) {
    // TODO: implement writeln
  }
}
