import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/dao/entity/account.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/register_stepper_controller.dart';
import 'package:cuu_tro_flutter/getx/shared_preference/shared_preference_ctrl.dart';
import 'package:cuu_tro_flutter/helper/keyboard.dart';
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:cuu_tro_flutter/widgets/custom_surfix_icon.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:cuu_tro_flutter/widgets/form_error.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';


class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
//TODO: remove  when finish
  SharedPreferenceCtrl sharedPreferenceCtrl = Get.put(SharedPreferenceCtrl());
  AccountController accountController = Get.find();
  RegisterStepperCtrl registerStepperCtrl = Get.find();
  final _formKey = GlobalKey<FormState>();
  String email="";
  String password="";
  bool remember = false;
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword= new TextEditingController();
  final List<String> errors = [];
  Account account  = new Account();
  bool isUpdate= false;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(txtEmail),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(txtPassword),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () async {
              // if (_formKey.currentState.validate()) {
              //   _formKey.currentState.save();
              //   account.accountIdf= txtEmail.text;
              //   account.password=txtPassword.text;
              //   if(isUpdate){
              //     Get.toNamed(HomePage.routeName);
              //   }
              //   else{
              //     accountController.account.value = account;
              //     KeyboardUtil.hideKeyboard(context);
              //     registerStepperCtrl.index.value=1;
              //     print(txtEmail.text+" password : "+txtPassword.text);
              //     Get.toNamed(RegisterStepper.routeName);
              //   }
                // if all are valid then go to success screen
              Account account = new Account();
              account.fullName="anh yeu em ";
              account.accountType="GMAIL";
              account.phoneNumber="0903452954";
              account.playerId="this is player id";
              account.pushToken=" push token ";
              account.avatarUrl="https://picsum.photos/200";
              account.dob=1619235564;
              account.lat=1619235564.0;
              account.lon=1619235564.123;
              account.location="Nam dinh";

              await sharedPreferenceCtrl.saveAccount(account);
              await sharedPreferenceCtrl.getAccount();

              print(sharedPreferenceCtrl.account.value.accountType);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField(TextEditingController txtController) {
    return TextFormField(
      controller: txtController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField(TextEditingController txtController) {
    return TextFormField(
      controller: txtController,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "UserName",
        hintText: "Enter your username",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
