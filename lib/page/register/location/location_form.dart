import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/widgets/custom_text_field.dart';
import 'package:cuu_tro_flutter/widgets/default_button.dart';
import 'package:flutter/material.dart';

class LocationForm extends StatefulWidget {
  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController txtLocation= new TextEditingController();

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
        CustomTextField.create(txtLocation, "Location", "Enter your location !"),
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

          },
        ),

      ],
    ));
  }
}