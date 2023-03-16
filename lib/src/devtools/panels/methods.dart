@JS()
library chrome.devtools.panels;

import 'dart:html';
import 'package:js/js.dart';
part 'types.dart';

@JS()
@anonymous
class Panels {
  external String get themeName;

  external void create(String title, String iconPath, String pagePath,
      void Function(ExtensionPanel)? callback);
}
