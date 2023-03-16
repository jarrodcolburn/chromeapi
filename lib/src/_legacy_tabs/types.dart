@JS('chrome.tabs')
library tabs;
// File interop with javascript functionality exposed by chrome extensions.

import 'package:js/js.dart' show JS, anonymous;



/// JavaScript object(s) returned from `chrome.tabs.query`
@JS()
@anonymous

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-MutedInfo
