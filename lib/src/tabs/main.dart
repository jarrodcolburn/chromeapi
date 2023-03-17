import './methods.dart' as tabs;
import './methods.dart' show Tab;
import '../_helpers.dart';

class Tabs {
  static final Tabs _singleton = Tabs._internal();

  factory Tabs() {
    return _singleton;
  }
  Future<Tab?> getCurrent() => tabs.getCurrent().toFuture<Tab?>();
  Tabs._internal();
}
