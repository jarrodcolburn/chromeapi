Chrome Extensions API


## Features
 
Project is WIP, starting with `chrome.tabs` mostly implemented (methods, not events).

## Prerequisites

* Set permissions in `manifest.json` required to use specifc API's according found at [Chrome Reference](https://developer.chrome.com/docs/extensions/reference)
* If building with Flutter, 
	* Make the appropriate changes to the normal working directory/files. 
		- Examples: 
		* `manifest.json` (example: service workers)
		* `index.json`
	*  Customize the build command `flutter build web --web-renderer html --csp`
For reference on [Building Chrome Extension using Flutter](https://medium.com/flutter-community/building-a-chrome-extension-using-flutter-aeb100a6d6c)

## Usage 
Import the package.
`import 'package:chromeapi/chromeapi.dart';


Use the `chrome` object. Currently only `chrome.tabs` works.

See example on getting the active tab.

```dart
Future<Tab> getActiveTab() async {
  QueryInfo queryInfo = QueryInfo(active: true, lastFocusedWindow: true);
  List<Tab> tabs = await chrome.tabs.query(queryInfo);
  final tab = tabs.singleWhere((tab) => tab.url != null && tab.url!.isNotEmpty);
  return tab;
}
```