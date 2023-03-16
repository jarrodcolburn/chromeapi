@JS()
library chorome.tabs;

import 'package:js/js.dart';
part 'types.dart';
part 'events.dart';
part 'misc.dart';

@JS()
@anonymous
class Tabs {
  external dynamic create(TabInfo tabInfo, void Function(Tab) callback);
  external dynamic get(int tabId, void Function(Tab?) callback);
  external dynamic query(
      QueryInfo queryInfo, void Function(List<Tab>) callback);
  external dynamic remove(int tabId, void Function()? callback);

  external OnActivatedHandler get onActivated;

  external OnRemovedHandler get onRemoved;
}
