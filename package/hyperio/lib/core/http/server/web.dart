// ignore_for_file: public_member_api_docs

import "dart:io" show HttpServer;

typedef HyperioAzkadevHttpServer = HttpServer;

// // ignore_for_file: public_member_api_docs

// import "dart:async";
// import "dart:io" show HttpConnectionsInfo, HttpHeaders, HttpRequest, HttpServer, InternetAddress;

// class HyperioAzkadevHttpServer implements HttpServer {
//   @override
//   bool autoCompress;

//   @override
//   Duration? idleTimeout;

//   @override
//   String? serverHeader;

//   @override
//   // TODO: implement address
//   InternetAddress get address => throw UnimplementedError();

//   @override
//   Future<bool> any(bool Function(HttpRequest element) test) {
//     // TODO: implement any
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> asBroadcastStream({void Function(StreamSubscription<HttpRequest> subscription)? onListen, void Function(StreamSubscription<HttpRequest> subscription)? onCancel}) {
//     // TODO: implement asBroadcastStream
//     throw UnimplementedError();
//   }

//   @override
//   Stream<E> asyncExpand<E>(Stream<E>? Function(HttpRequest event) convert) {
//     // TODO: implement asyncExpand
//     throw UnimplementedError();
//   }

//   @override
//   Stream<E> asyncMap<E>(FutureOr<E> Function(HttpRequest event) convert) {
//     // TODO: implement asyncMap
//     throw UnimplementedError();
//   }

//   @override
//   Stream<R> cast<R>() {
//     // TODO: implement cast
//     throw UnimplementedError();
//   }

//   @override
//   Future close({bool force = false}) {
//     // TODO: implement close
//     throw UnimplementedError();
//   }

//   @override
//   HttpConnectionsInfo connectionsInfo() {
//     // TODO: implement connectionsInfo
//     throw UnimplementedError();
//   }

//   @override
//   Future<bool> contains(Object? needle) {
//     // TODO: implement contains
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement defaultResponseHeaders
//   HttpHeaders get defaultResponseHeaders => throw UnimplementedError();

//   @override
//   Stream<HttpRequest> distinct([bool Function(HttpRequest previous, HttpRequest next)? equals]) {
//     // TODO: implement distinct
//     throw UnimplementedError();
//   }

//   @override
//   Future<E> drain<E>([E? futureValue]) {
//     // TODO: implement drain
//     throw UnimplementedError();
//   }

//   @override
//   Future<HttpRequest> elementAt(int index) {
//     // TODO: implement elementAt
//     throw UnimplementedError();
//   }

//   @override
//   Future<bool> every(bool Function(HttpRequest element) test) {
//     // TODO: implement every
//     throw UnimplementedError();
//   }

//   @override
//   Stream<S> expand<S>(Iterable<S> Function(HttpRequest element) convert) {
//     // TODO: implement expand
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement first
//   Future<HttpRequest> get first => throw UnimplementedError();

//   @override
//   Future<HttpRequest> firstWhere(bool Function(HttpRequest element) test, {HttpRequest Function()? orElse}) {
//     // TODO: implement firstWhere
//     throw UnimplementedError();
//   }

//   @override
//   Future<S> fold<S>(S initialValue, S Function(S previous, HttpRequest element) combine) {
//     // TODO: implement fold
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> forEach(void Function(HttpRequest element) action) {
//     // TODO: implement forEach
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> handleError(Function onError, {bool Function(dynamic error)? test}) {
//     // TODO: implement handleError
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement isBroadcast
//   bool get isBroadcast => throw UnimplementedError();

//   @override
//   // TODO: implement isEmpty
//   Future<bool> get isEmpty => throw UnimplementedError();

//   @override
//   Future<String> join([String separator = ""]) {
//     // TODO: implement join
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement last
//   Future<HttpRequest> get last => throw UnimplementedError();

//   @override
//   Future<HttpRequest> lastWhere(bool Function(HttpRequest element) test, {HttpRequest Function()? orElse}) {
//     // TODO: implement lastWhere
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement length
//   Future<int> get length => throw UnimplementedError();

//   @override
//   StreamSubscription<HttpRequest> listen(void Function(HttpRequest event)? onData, {Function? onError, void Function()? onDone, bool? cancelOnError}) {
//     // TODO: implement listen
//     throw UnimplementedError();
//   }

//   @override
//   Stream<S> map<S>(S Function(HttpRequest event) convert) {
//     // TODO: implement map
//     throw UnimplementedError();
//   }

//   @override
//   Future pipe(StreamConsumer<HttpRequest> streamConsumer) {
//     // TODO: implement pipe
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement port
//   int get port => throw UnimplementedError();

//   @override
//   Future<HttpRequest> reduce(HttpRequest Function(HttpRequest previous, HttpRequest element) combine) {
//     // TODO: implement reduce
//     throw UnimplementedError();
//   }

//   @override
//   set sessionTimeout(int timeout) {
//     // TODO: implement sessionTimeout
//   }

//   @override
//   // TODO: implement single
//   Future<HttpRequest> get single => throw UnimplementedError();

//   @override
//   Future<HttpRequest> singleWhere(bool Function(HttpRequest element) test, {HttpRequest Function()? orElse}) {
//     // TODO: implement singleWhere
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> skip(int count) {
//     // TODO: implement skip
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> skipWhile(bool Function(HttpRequest element) test) {
//     // TODO: implement skipWhile
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> take(int count) {
//     // TODO: implement take
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> takeWhile(bool Function(HttpRequest element) test) {
//     // TODO: implement takeWhile
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> timeout(Duration timeLimit, {void Function(EventSink<HttpRequest> sink)? onTimeout}) {
//     // TODO: implement timeout
//     throw UnimplementedError();
//   }

//   @override
//   Future<List<HttpRequest>> toList() {
//     // TODO: implement toList
//     throw UnimplementedError();
//   }

//   @override
//   Future<Set<HttpRequest>> toSet() {
//     // TODO: implement toSet
//     throw UnimplementedError();
//   }

//   @override
//   Stream<S> transform<S>(StreamTransformer<HttpRequest, S> streamTransformer) {
//     // TODO: implement transform
//     throw UnimplementedError();
//   }

//   @override
//   Stream<HttpRequest> where(bool Function(HttpRequest event) test) {
//     // TODO: implement where
//     throw UnimplementedError();
//   }
// }
