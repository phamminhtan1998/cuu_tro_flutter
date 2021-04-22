import 'package:cuu_tro_flutter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'global.dart' as globals;

// @dart=2.9
void main() {
  globals.appNavigator = GlobalKey<NavigatorState>();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: globals.appNavigator,
      home: HomePage(),
    );
  }
}
