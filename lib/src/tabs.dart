library tabs;

import 'dart:js_util' show promiseToFuture;
import 'tabs/types.dart';
import 'tabs/methods.dart' as _tabs;

Future<List<T?>> _promiseToFutureList<T>(dynamic response) =>
    promiseToFuture(response).then((result) {
      if (result is List) return result.cast<T?>();
      if (result == null) return <T>[];
      if (result is T) return <T>[result];
      throw Exception('Promise return type not expected');
    });

Future<Tab?> duplicate(int tabId) =>
    promiseToFuture<Tab?>(_tabs.duplicate(tabId));

Future<List> executeScript(int tabId, InjectionDetails details) =>
    _promiseToFutureList(_tabs.executeScript(tabId, details));

Future<Tab?> get(int tabId) => promiseToFuture<Tab?>(_tabs.get(tabId));

@Deprecated(
    'getAllInWindow` is deprecated. Please use `tabs.query({windowId: windowId})`')
Future getAllInWindow(int? windowId) => throw Exception(
    'getAllInWindow` is deprecated. Please use `tabs.query({windowId: windowId})`');

Future<Tab?> getCurrent() => promiseToFuture<Tab?>(_tabs.getCurrent());

@Deprecated(
    "`getSelected` is deprecated. Please use `tabs.query({active: true})`")
Future getSelected(int? windowId) => throw Exception(
    "`getSelected` is deprecated. Please use `tabs.query({active: true})`");

Future<num> getZoom(int? tabId) => promiseToFuture<num>(_tabs.getZoom(tabId));

Future<List<Tab?>> query(QueryInfo queryInfo) =>
    _promiseToFutureList<Tab>(_tabs.query(queryInfo));
