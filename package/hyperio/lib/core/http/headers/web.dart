// ignore_for_file: public_member_api_docs, unused_element, empty_catches

import "dart:io" show ContentType, HttpHeaders;

class HyperioAzkadevHttpHeaders implements HttpHeaders {
  final Map<String, List<String>> _headers = <String, List<String>>{
    //
  };
  @override

  /// Whether the connection uses chunked transfer encoding.
  ///
  /// Reflects and modifies the value of the [transferEncodingHeader] header.
  late bool chunkedTransferEncoding;

  /// The value of the [contentLengthHeader] header, if any.
  ///
  /// The value is negative if there is no content length set.
  @override
  int contentLength = -1;

  @override
  ContentType? contentType;

  @override
  DateTime? date;

  @override
  DateTime? expires;

  @override
  String? host;

  @override
  DateTime? ifModifiedSince;

  @override
  late bool persistentConnection;

  @override
  int? port;

  @override
  List<String>? operator [](String name) {
    return _headers[name];
  }

  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {
    try {
      _headers.addAll({
        name: value as List<String>,
      });
    } catch (e) {}
    // TODO: implement add
  }

  @override
  void clear() {
    _headers.clear();
    // TODO: implement clear
  }

  @override
  void forEach(void Function(String name, List<String> values) action) {
    _headers.forEach(action);
  }

  @override
  void noFolding(String name) {
    // TODO: implement noFolding
  }

  @override
  void remove(String name, Object value) {
    _headers.removeWhere(((k, v) => k == name && v == value));
  }

  @override
  void removeAll(String name) {
    _headers.remove(name);
    // TODO: implement removeAll
  }

  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {
    try {
      _headers[name] = value as List<String>;
    } catch (e) {}
    // TODO: implement set
  }

  @override
  String? value(String name) {
    final data = this[name];
    if (data == null) {
      return null;
    }
    return data.join("; ");
  }
}
