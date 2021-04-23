import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/register/detail/register_detail_form.dart';
import 'package:cuu_tro_flutter/page/register/select_role/role_form.dart';
import 'package:flutter/material.dart';

class RoleBody extends StatefulWidget {
  @override
  _RoleBodyState createState() => _RoleBodyState();
}

class _RoleBodyState extends State<RoleBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding:
          EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
            bottom: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Role Select", style: headingStyle),
                Text(
                  "Please select right role for you!",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RoleForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  'We finally reach the destination!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


