@JS()
library chrome.storage;

import 'package:js/js.dart';
part 'types.dart';
part 'events.dart';

/// chrome.storage APIs
/// https://developer.chrome.com/docs/extensions/reference/storage
@JS()
@anonymous
class Storage {
  external StorageArea get local;

  external StorageArea get session;

  external OnChangedHandler get onChanged;
}
