import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:flutter/material.dart';
import 'custom_surfix_icon.dart';

class CustomTextField {
  static TextFormField create(
      TextEditingController txtCtrl, String label, String hintText,
      {Function validator , CustomSurffixIcon icon,TextInputType typeKeyboard }) {
    return TextFormField(
      keyboardType: typeKeyboard==null? TextInputType.text:typeKeyboard,
      controller: txtCtrl,
      obscureText: true,
      validator: validator == null
          ? (value) {
              if (value.isEmpty) {
                return "Not Empty ";
              }
              return null;
            }
          : validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:icon ==null?SizedBox.shrink() : icon,
      ),
    );
  }
}
