import 'src/tabs/main.dart';
export 'src/tabs/types.dart';
export 'src/tabs/misc.dart';

Chrome chrome = Chrome._();

class Chrome {
  Chrome._();
  Tabs get tabs => chromeTabs;
}
