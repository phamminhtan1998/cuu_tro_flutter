import 'package:cuu_tro_flutter/page/register/select_type/register_body.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static String routeName= "/register_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}
