import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/login/login_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login_page";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: LoginBody()
        ),
    );
  }
}
