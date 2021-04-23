import 'package:cuu_tro_flutter/page/register/register_body.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static String routeName= "/register_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: RegisterBody(),
    );
  }
}
