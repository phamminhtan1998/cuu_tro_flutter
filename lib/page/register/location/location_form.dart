import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/register_stepper_controller.dart';
import 'package:cuu_tro_flutter/widgets/custom_text_field.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationForm extends StatefulWidget {
  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController txtLocation= new TextEditingController();
  RegisterStepperCtrl registerStepperCtrl = Get.find();
  AccountController accountController = Get.find();

  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: Column(
      children: [
        CustomTextField.create(txtLocation, "Location",
            accountController.account.value.location == null
                ? ""
                : accountController.account.value.location,
            altIcon: Icon(Icons.location_on_outlined)),
        SizedBox(height: getProportionateScreenHeight(30)),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.orange
          ),
          child: Text("fafadfasdf"),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          text: "Continue",
          press: () {
            registerStepperCtrl.index.value=3;
          },
        ),
      ],
    ));
  }
}