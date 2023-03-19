import 'package:chromeapi/tabs.dart';
import 'package:flutter/material.dart' hide Tab;

import 'qr_view.dart';

void main() => runApp(const MyApp());

Future<Tab> getActiveTab() async {
  QueryInfo queryInfo = QueryInfo(active: true, lastFocusedWindow: true);
  // Chrome library, not like JS namespaces
  // `chrome.tabs.query` just `query` in this case
  List<Tab> tabs = await query(queryInfo);
  return tabs.singleWhere((tab) => tab.url != null && tab.url!.isNotEmpty);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chrome Extension',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FutureBuilder<Tab>(
        future: getActiveTab(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return QRView(qrText: snapshot.data!.url!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
