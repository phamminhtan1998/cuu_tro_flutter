import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/dao/entity/account.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/register_stepper_controller.dart';
import 'package:cuu_tro_flutter/page/login/login_form.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:cuu_tro_flutter/widgets/no_account_text.dart';
import 'package:cuu_tro_flutter/widgets/socal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  RegisterStepperCtrl registerStepperCtrl = Get.put(RegisterStepperCtrl());
  //TODO: move to home page when finish
  AccountController accountController = Get.put(AccountController());
  Account account = new Account();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
            bottom: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () async {
                          bool response = await logInWithGG();
                          if (response) {
                            registerStepperCtrl.index.value = 1;
                            accountController.account.value = account;
                            Get.toNamed(RegisterStepper.routeName);
                          }
                        }),
                    SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () async {
                          bool response = await logInWithFB();
                          if (response) {
                            registerStepperCtrl.index.value = 1;
                            accountController.account.value = account;
                            Get.toNamed(RegisterStepper.routeName);
                          }
                          else{
                            print('Some thing wrong');
                          }
                        }),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> logInWithGG() async {
    await _googleSignIn.signOut();
    var data = await _googleSignIn.signIn();
    try {
      if (data.email != null) {
        account.avatarUrl = data.photoUrl;
        account.accountIdf = data.email;
        account.fullName = data.displayName;
        return true;
      }
    } catch (e) {
      print(e.toString());
      print('loi roi ');
      return false;
    }
  }

  Future<bool> logInWithFB() async {
    await FacebookAuth.instance.logOut();
    try {

      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile', 'user_birthday'],
      ); // by the fault we request the email and the public profile
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.instance.getUserData(
          fields: "name,email,picture.width(200),birthday"
        );
        account.fullName= userData['name'];
        if(userData['phone_number']!=null){
          account.phoneNumber= userData['phoneNumber'];
        }
        if(userData['email']!=null){
          account.phoneNumber= userData['email'];
        }
        account.avatarUrl= userData['picture']["data"]["url"];
        print('========================================================');
        print(account.toString());
        return true;
      }
      print(result.status);
    } catch (e) {
      return false;
    }
  }
}
