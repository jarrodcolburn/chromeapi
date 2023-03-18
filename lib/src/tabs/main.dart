import 'package:chromeapi/src/tabs/misc.dart';

import '../_promise_converters.dart';
import 'methods.dart' as tabs;
import 'types.dart';

Future<Tab> create(CreateProperties tabInfo) =>
    tabs.create(tabInfo).toFuture<Tab>();

Future<Tab?> duplicate(int tabId) => tabs.duplicate(tabId).toFuture<Tab?>();

// TODO: Implement executeScript!
@Deprecated('Use executeScript instead')
Future<List> executeScript() => throw Exception('Use executeScript instead');

Future<Tab?> get(int tabId) => tabs.get(tabId).toFuture<Tab?>();

Future<Tab?> getCurrent() => tabs.getCurrent().toFuture<Tab?>();

Future<List<Tab>> query(QueryInfo queryInfo) =>
    tabs.query(queryInfo).toFutureList<Tab>();

Future<int> getZoom(int? tabId) => tabs.getZoom(tabId).toFuture<int>();
// // Expose events as streams instead of relying on callbacks.
// Stream<_ActivatedEvent> get onActivated async* {
//   while (true) {
//     final completer = Completer<_ActivatedEvent>();
//     void callback(ActiveInfo activeInfo) {
//       _ActivatedEvent activatedEvent = _ActivatedEvent._(
//         activeInfo: activeInfo,
//       );
//       completer.complete(activatedEvent);
//     }

//     tabs.onActivated(callback);
//     yield await completer.future;
//   }
// }

// Stream<_RemovedEvent> get onRemoved async* {
//   while (true) {
//     final completer = Completer<_RemovedEvent>();
//     void callback(int tabId, RemoveInfo info) {
//       _RemovedEvent removedEvent = _RemovedEvent._(tabId: tabId, info: info);
//       completer.complete(removedEvent);
//     }

//     tabs.onRemoved(callback);
//     yield await completer.future;
//   }
// }
// // Events classes will be implemented as Record classes in future release.
// // Prefixed with `_` to discourage extension of classes in short term.
// class _ActivatedEvent {
//   final ActiveInfo activeInfo;
//   _ActivatedEvent._({required this.activeInfo});
// }

// class _RemovedEvent {
//   final int tabId;
//   final RemoveInfo info;
//   _RemovedEvent._({required this.tabId, required this.info});
// }
