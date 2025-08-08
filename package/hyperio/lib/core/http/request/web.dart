// ignore_for_file: public_member_api_docs, unused_element

import "dart:async";
import "dart:io"
    show
        Cookie,
        HttpConnectionInfo,
        HttpHeaders,
        HttpRequest,
        HttpSession,
        X509Certificate;
import "dart:typed_data";
import "package:web/web.dart" as web;

import "package:hyperio/core/http/response/web.dart";

class HyperioAzkadevHttpRequest implements HttpRequest {
  final HyperioAzkadevHttpResponse _hyperioHttpResponse;
  final web.Request _request;
  HyperioAzkadevHttpRequest({
    dynamic request,
    dynamic response,
  })  : _request = request as web.Request,
        _hyperioHttpResponse = response as HyperioAzkadevHttpResponse;

  @override
  Future<bool> any(bool Function(Uint8List element) test) {
    // TODO: implement any
    throw UnimplementedError("any");
  }

  @override
  Stream<Uint8List> asBroadcastStream(
      {void Function(StreamSubscription<Uint8List> subscription)? onListen,
      void Function(StreamSubscription<Uint8List> subscription)? onCancel}) {
    // TODO: implement asBroadcastStream
    throw UnimplementedError("asBroadcastStream");
  }

  @override
  Stream<E> asyncExpand<E>(Stream<E>? Function(Uint8List event) convert) {
    // TODO: implement asyncExpand
    throw UnimplementedError("asyncExpand");
  }

  @override
  Stream<E> asyncMap<E>(FutureOr<E> Function(Uint8List event) convert) {
    // TODO: implement asyncMap
    throw UnimplementedError("asyncMap");
  }

  @override
  Stream<R> cast<R>() {
    // TODO: implement cast
    throw UnimplementedError("cast");
  }

  @override
  // TODO: implement certificate
  X509Certificate? get certificate => throw UnimplementedError("certificate");

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo =>
      throw UnimplementedError("connectionInfo");

  @override
  Future<bool> contains(Object? needle) {
    // TODO: implement contains
    throw UnimplementedError("contains");
  }

  @override
  // TODO: implement contentLength
  int get contentLength => throw UnimplementedError("contentLength");

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError();

  @override
  Stream<Uint8List> distinct(
      [bool Function(Uint8List previous, Uint8List next)? equals]) {
    // TODO: implement distinct
    throw UnimplementedError();
  }

  @override
  Future<E> drain<E>([E? futureValue]) {
    // TODO: implement drain
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> elementAt(int index) {
    // TODO: implement elementAt
    throw UnimplementedError();
  }

  @override
  Future<bool> every(bool Function(Uint8List element) test) {
    // TODO: implement every
    throw UnimplementedError();
  }

  @override
  Stream<S> expand<S>(Iterable<S> Function(Uint8List element) convert) {
    // TODO: implement expand
    throw UnimplementedError();
  }

  @override
  // TODO: implement first
  Future<Uint8List> get first => throw UnimplementedError();

  @override
  Future<Uint8List> firstWhere(bool Function(Uint8List element) test,
      {Uint8List Function()? orElse}) {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }

  @override
  Future<S> fold<S>(
      S initialValue, S Function(S previous, Uint8List element) combine) {
    // TODO: implement fold
    throw UnimplementedError();
  }

  @override
  Future<void> forEach(void Function(Uint8List element) action) {
    // TODO: implement forEach
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> handleError(Function onError,
      {bool Function(dynamic error)? test}) {
    // TODO: implement handleError
    throw UnimplementedError();
  }

  @override
  // TODO: implement headers
  HttpHeaders get headers => throw UnimplementedError();

  @override
  // TODO: implement isBroadcast
  bool get isBroadcast => throw UnimplementedError();

  @override
  // TODO: implement isEmpty
  Future<bool> get isEmpty => throw UnimplementedError();

  @override
  Future<String> join([String separator = ""]) {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  // TODO: implement last
  Future<Uint8List> get last => throw UnimplementedError();

  @override
  Future<Uint8List> lastWhere(bool Function(Uint8List element) test,
      {Uint8List Function()? orElse}) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }

  @override
  // TODO: implement length
  Future<int> get length => throw UnimplementedError();

  @override
  StreamSubscription<Uint8List> listen(void Function(Uint8List event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    // TODO: implement listen
    throw UnimplementedError();
  }

  @override
  Stream<S> map<S>(S Function(Uint8List event) convert) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  // TODO: implement method
  String get method => _request.method;

  @override
  // TODO: implement persistentConnection
  bool get persistentConnection => throw UnimplementedError();

  @override
  Future pipe(StreamConsumer<Uint8List> streamConsumer) {
    // TODO: implement pipe
    throw UnimplementedError();
  }

  @override
  // TODO: implement protocolVersion
  String get protocolVersion => throw UnimplementedError();

  @override
  Future<Uint8List> reduce(
      Uint8List Function(Uint8List previous, Uint8List element) combine) {
    // TODO: implement reduce
    throw UnimplementedError();
  }

  @override
  // TODO: implement requestedUri
  Uri get requestedUri => uri;

  @override
  // TODO: implement response
  HyperioAzkadevHttpResponse get response => _hyperioHttpResponse;

  @override
  // TODO: implement session
  HttpSession get session => throw UnimplementedError();

  @override
  // TODO: implement single
  Future<Uint8List> get single => throw UnimplementedError();

  @override
  Future<Uint8List> singleWhere(bool Function(Uint8List element) test,
      {Uint8List Function()? orElse}) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> skip(int count) {
    // TODO: implement skip
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> skipWhile(bool Function(Uint8List element) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> take(int count) {
    // TODO: implement take
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> takeWhile(bool Function(Uint8List element) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }

  @override
  Stream<Uint8List> timeout(Duration timeLimit,
      {void Function(EventSink<Uint8List> sink)? onTimeout}) {
    // TODO: implement timeout
    throw UnimplementedError();
  }

  @override
  Future<List<Uint8List>> toList() {
    // TODO: implement toList
    throw UnimplementedError();
  }

  @override
  Future<Set<Uint8List>> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }

  @override
  Stream<S> transform<S>(StreamTransformer<Uint8List, S> streamTransformer) {
    // TODO: implement transform
    throw UnimplementedError();
  }

  // @override
  // // TODO: implement uri
  // Uri get uri => Uri.parse(_request.url);

  @override
  // TODO: implement uri
  Uri get uri {
    Uri uriOrigin = Uri.parse(_request.url);
    return Uri().replace(
      path: uriOrigin.path,
      query: uriOrigin.query,
    );
  }

  @override
  Stream<Uint8List> where(bool Function(Uint8List event) test) {
    // TODO: implement where
    throw UnimplementedError();
  }
}
