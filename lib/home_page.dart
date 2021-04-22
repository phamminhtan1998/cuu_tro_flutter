import 'package:cuu_tro_flutter/second_page.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'global.dart' as globals;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final String oneSignalId = "648898a1-1861-467d-81f4-9dee88aba5eb";
  @override
  void initState() {
    // TODO: implement initState\
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mien trung"),
      ),
      body: Center(
        child: Text("Test"),
      ),
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.init(oneSignalId);
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared.setNotificationOpenedHandler((openedResult) {
      var message = openedResult.notification.payload.additionalData;
      globals.appNavigator.currentState.push(MaterialPageRoute(
        builder: (context) => SecondPage(
          message: message['message'].toString(),
        ),
      ));
    });
  }
}
