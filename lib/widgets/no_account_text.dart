import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/register/select_type/register_page.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../common/custom_colors.dart' as CustomColor;

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(RegisterStepper.routeName);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
