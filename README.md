Chrome Extensions API

## Features

Project is WIP, starting with `chrome.tabs` mostly implemented (methods, not events).

## Prerequisites

* Set permissions in `manifest.json` required to use specifc API's according found at [Chrome Reference](https://developer.chrome.com/docs/extensions/reference)
* If building with Flutter,
  * Make the appropriate changes to the normal working directory/files.
    * Examples:
    * `manifest.json` (example: service workers)
    * `index.json`
  * Customize the build command `flutter build web --web-renderer html --csp`
For reference on [Building Chrome Extension using Flutter](https://medium.com/flutter-community/building-a-chrome-extension-using-flutter-aeb100a6d6c)

## Usage

```dart
import 'package:chromeapi/chromeapi.dart';

Future<Tab> getActiveTab() async {
  QueryInfo queryInfo = QueryInfo(active: true, lastFocusedWindow: true);
  List<Tab> tabs = await chrome.tabs.query(queryInfo);
  final tab = tabs.singleWhere((tab) => tab.url != null && tab.url!.isNotEmpty);
  return tab;
}
```

Above function is used in example package, an Chrome Extension that, when clicked, generates a QR code for url from the active tab.

Note, if using Flutter make sure to avoid naming collision, example...

```dart
// chromeapi also imports a 'Tab' class
import 'package:flutter/material.dart' hide Tab;
```
