import 'package:bottom_bars/bottom_bars.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/expanded/expanded_controller.dart';
import 'package:cuu_tro_flutter/getx/form/errors_login_form_ctrl.dart';
import 'package:cuu_tro_flutter/getx/register_stepper_controller.dart';
import 'package:cuu_tro_flutter/getx/shared_preference/shared_preference_ctrl.dart';
import 'package:cuu_tro_flutter/page/account/account_page.dart';
import 'package:cuu_tro_flutter/page/forecast/forecast_page.dart';
import 'package:cuu_tro_flutter/page/news/news_page.dart';
import 'package:cuu_tro_flutter/page/sos/request_rescue_page.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icons.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import '../common/custom_colors.dart' as CustomColors;
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final String oneSignalId = "648898a1-1861-467d-81f4-9dee88aba5eb";

  AccountController accountController = Get.put(AccountController());
  SharedPreferenceCtrl sharedPreferenceCtrl = Get.put(SharedPreferenceCtrl());
  RegisterStepperCtrl registerStepperCtrl = Get.put(RegisterStepperCtrl());
  ErrorsLoginFormCtrl errorsLoginFormCtrl = Get.put(ErrorsLoginFormCtrl());
  ExpandedController expandedController = Get.put(ExpandedController());
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    initPlatformState();
    sharedPreferenceCtrl.getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return BottomBars(
      backgroundBarColor: Colors.white70,
      canDrag: false,
      type: BottomBarsType.Animated,
      items: [
        BottomBarsItem(
          page: NewsPage(),
          item: Item(
            icon: LineIcons.newspaper,
            title: Text("News"),
            color: Colors.grey,
            activeColor: Colors.yellow,
          ),
        ),
        BottomBarsItem(
          page: ForecastPage(),
          item: Item(
            icon: LineIcons.cloud,
            title: Text("Weather"),
            color: Colors.grey,
            activeColor: Colors.blue,
          ),
        ),
        BottomBarsItem(
          page: RequestRescuePage(),
          item: Item(
            icon: LineIcons.lightningBolt,
            title: Text("SOS"),
            color: Colors.grey,
            activeColor: Colors.red,
          ),
        ),
        BottomBarsItem(
          page: AccountPage(),
          item: Item(
            icon: Icons.account_circle_outlined,
            title: Text("Account"),
            color: Colors.grey,
            activeColor: Colors.green,
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
      Get.toNamed(RegisterStepper.routeName);
    });
    OneSignal.shared.getPermissionSubscriptionState().then((value){
      // playerIds= value.subscriptionStatus.userId;
      // pushToken= value.subscriptionStatus.pushToken;
    });
  }
}
