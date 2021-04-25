import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/shared_preference/shared_preference_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  static String routeName = "/account_page";
  AccountController accountController = Get.find();
  SharedPreferenceCtrl sharedPreferenceCtrl = Get.find();
  @override
  Widget build(BuildContext context) {
    print(sharedPreferenceCtrl.account.value.avatarUrl);
    return Scaffold(
      body: Obx(() => sharedPreferenceCtrl.account.value.accountIdf != null
          ? Center(child: Text(sharedPreferenceCtrl.account.value.avatarUrl))
          : Center(
              child: Text("fafaffasdf"),
            )),
    );
  }
}
