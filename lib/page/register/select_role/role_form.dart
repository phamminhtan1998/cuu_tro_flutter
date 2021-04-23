import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/widgets/custom_text_field.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RoleForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController txtLocation= new TextEditingController();

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: Column(
      children: [
        CustomTextField.create(txtLocation, "Organization", "Enter your name of Organization !"),
        SizedBox(height: getProportionateScreenHeight(30)),
        CustomTextField.create(txtLocation, "Role", "Enter your position !"),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          text: "Register",
          press: () {
            Get.toNamed(HomePage.routeName);
          },
        ),

      ],
    ));
  }
}
