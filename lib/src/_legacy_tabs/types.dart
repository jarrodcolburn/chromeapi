// @JS('chrome.tabs')
// library tabs;
// // File interop with javascript functionality exposed by chrome extensions.

// import 'package:js/js.dart' show JS, anonymous;

// /// JavaScript object(s) returned from `chrome.tabs.query`
// @JS()
// @anonymous

// /// https://developer.chrome.com/docs/extensions/reference/tabs/#type-MutedInfo

// Future<Tab?> duplicate(int tabId) =>
//     promiseToFuture<Tab?>(_tabs.duplicate(tabId));

// Future<List> executeScript(int tabId, InjectionDetails details) =>
//     _promiseToFutureList(_tabs.executeScript(tabId, details));

// Future<Tab?> get(int tabId) => promiseToFuture<Tab?>(_tabs.get(tabId));

// @Deprecated(
//     'getAllInWindow` is deprecated. Please use `tabs.query({windowId: windowId})`')
// Future getAllInWindow(int? windowId) => throw Exception(
//     'getAllInWindow` is deprecated. Please use `tabs.query({windowId: windowId})`');

// Future<Tab?> getCurrent() => promiseToFuture<Tab?>(_tabs.getCurrent());

// @Deprecated(
//     "`getSelected` is deprecated. Please use `tabs.query({active: true})`")
// Future getSelected(int? windowId) => throw Exception(
//     "`getSelected` is deprecated. Please use `tabs.query({active: true})`");


// // Future<List<Tab?>> query(QueryInfo queryInfo) => _promiseToFutureList<Tab>(_tabs.query(queryInfo));
// Future<List<Tab?>> query(QueryInfo queryInfo) =>
//     _tabs.query(queryInfo)?.toFutureList<Tab>() ??
//     (throw Exception('`tabs.query` did not return a promise'));
