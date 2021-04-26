import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/shared_preference/shared_preference_ctrl.dart';
import 'package:cuu_tro_flutter/page/account/account_body.dart';
import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  static String routeName = "/account_page";
  AccountController accountController = Get.find();
  SharedPreferenceCtrl sharedPreferenceCtrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => accountController.account.value==null||accountController.account.value.avatarUrl== null
          ? LoginPage()
          : AccountBody()),
    );
  }
}
