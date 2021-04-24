import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/register_stepper_controller.dart';
import 'package:cuu_tro_flutter/widgets/custom_text_field.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterDetailForm extends StatelessWidget {
  RegisterStepperCtrl registerStepperCtrl = Get.find();
  AccountController accountController = Get.find();
  final _formKey = GlobalKey<FormState>();
  TextEditingController txtFullName = new TextEditingController();
  TextEditingController txtPhoneNumber = new TextEditingController();
  TextEditingController txtDob = new TextEditingController();

  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Obx(
          () => Column(
            children: [
              CustomTextField.create(
                  txtFullName,
                  "Full Name",
                  accountController.account.value.fullName == null
                      ? ""
                      : accountController.account.value.fullName,
                  typeKeyboard: TextInputType.emailAddress,
                  altIcon: Icon(Icons.person_outline)),
              SizedBox(height: getProportionateScreenHeight(30)),
              CustomTextField.create(
                  txtPhoneNumber, "Phone Number",
                  accountController.account.value.phoneNumber == null
                      ? ""
                      : accountController.account.value.phoneNumber,
                  typeKeyboard: TextInputType.phone,
                  altIcon: Icon(Icons.phone_android)),
              SizedBox(height: getProportionateScreenHeight(30)),
              CustomTextField.create(
                  txtDob, "Date Of Birth",
                  accountController.account.value.dob == null
                      ? "Enter with pattern yyyy/mm/dd"
                      : accountController.account.value.dob,
                  typeKeyboard: TextInputType.datetime,
                  altIcon: Icon(Icons.cake_outlined)),
              SizedBox(height: getProportionateScreenHeight(30)),
              DefaultButton(
                text: "Continue",
                press: () {
                  print(txtDob.text);
                  registerStepperCtrl.index.value = 2;
                },
              ),
            ],
          ),
        ));
  }
}
