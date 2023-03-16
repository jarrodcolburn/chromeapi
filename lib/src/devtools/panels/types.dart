part of chrome.devtools.panels;

@JS()
@anonymous
class ExtensionPanel {
  external OnHiddenHandler get onHidden;
  external OnShownHandler get onShown;
}

@JS()
@anonymous
class OnHiddenHandler {
  external void addListener(void Function() callback);
}

@JS()
@anonymous
class OnShownHandler {
  external void addListener(void Function(Window window) callback);
}
