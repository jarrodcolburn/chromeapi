import 'package:chromeapi/chromeapi.dart';
import 'package:flutter/material.dart' hide Tab;

import 'qr_view.dart';

void main() => runApp(const MyApp());

Future<Tab> getActiveTab() async {
  QueryInfo queryInfo = QueryInfo(active: true, lastFocusedWindow: true);
  List<Tab> tabs = await chrome.tabs.query(queryInfo);
  final tab = tabs.singleWhere((tab) => tab.url != null && tab.url!.isNotEmpty);
  return tab;
}

final Map<String, Widget Function(BuildContext)> routes = {
  'options': buildOptionsPage
};

Widget buildOptionsPage(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text('Options'),
    ),
    body: const Center(
      child: Text('Options page'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
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
