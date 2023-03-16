@JS()
library;

import 'package:js/js.dart';

part 'errors.dart';
part 'events.dart';
part 'misc.dart';
part 'types.dart';

/// https://developer.chrome.com/docs/extensions/reference/runtime
@JS()
@anonymous
class Runtime {
  // Note: Not checking the lastError when one occurs throws a runtime exception.
  external ChromeError get lastError;

  external ConnectionHandler get onConnect;

  external OnMessageHandler get onMessage;

  external OnMessageHandler get onMessageExternal;

  external void connect(String? extensionId, ConnectInfo info);

  external Object getManifest();

  external String getURL(String path);

  external dynamic sendMessage(String? id, Object? message, Object? options,
      [_]);
}
