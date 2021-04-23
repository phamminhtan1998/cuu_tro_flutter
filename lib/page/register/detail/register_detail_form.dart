import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/widgets/custom_text_field.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:flutter/material.dart';

class RegisterDetailForm extends StatefulWidget {
  @override
  _RegisterDetailFormState createState() => _RegisterDetailFormState();
}

class _RegisterDetailFormState extends State<RegisterDetailForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController txtFullName= new TextEditingController();
  TextEditingController txtPhoneNumber= new TextEditingController();
  TextEditingController txtDob= new TextEditingController();
  final List<String> errors = [];

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
    return Form(key: _formKey, child: Column(
      children: [
        CustomTextField.create(txtFullName, "Full name", "Enter your full name!"),
        SizedBox(height: getProportionateScreenHeight(30)),
        CustomTextField.create(txtPhoneNumber, "Phone Number", "Enter your phone number !"),
        SizedBox(height: getProportionateScreenHeight(30)),
        CustomTextField.create(txtDob, "Date Of Birth", "Enter your age !"),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          text: "Continue",
          press: () {
          },
        ),

      ],
    ));
  }
}
