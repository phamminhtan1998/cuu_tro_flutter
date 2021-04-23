import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/register/detail/register_detail_body.dart';
import 'package:cuu_tro_flutter/page/register/select_type/register_body.dart';
import 'package:flutter/material.dart';

class RegisterDetail extends StatelessWidget {
  static String routeName= "/register_detail";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: RegisterDetailBody(),
    );
  }
}
