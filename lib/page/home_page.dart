import 'package:bottom_bars/bottom_bars.dart';
import 'package:cuu_tro_flutter/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import '../global.dart' as globals;

class HomePage extends StatefulWidget {
  static String routeName = "/home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final String oneSignalId = "648898a1-1861-467d-81f4-9dee88aba5eb";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomBars(
      items: [
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {}),
          ),
          item: Item(
            icon: Icons.group,
            title: Text("Group"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            appBar: AppBar(
              title: Text("Audio"),
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {}),
          ),
          item: Item(
            icon: Icons.ac_unit_outlined,
            title: Text("Audio"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(backgroundColor: Colors.yellow),
          item: Item(
            icon: Icons.home,
            title: Text("Home"),
            color: Colors.grey,
            activeColor: Colors.yellow,
          ),
        ),
        BottomBarsItem(
          page: Scaffold(backgroundColor: Colors.red),
          item: Item(
            icon: Icons.settings,
            title: Text("Settings"),
            color: Colors.grey,
            activeColor: Colors.red,
          ),
        ),
      ],
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.init(oneSignalId);
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared.setNotificationOpenedHandler((openedResult) {
      var message = openedResult.notification.payload.additionalData;
    });
  }
}
