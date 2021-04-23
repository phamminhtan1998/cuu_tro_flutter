import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/register/detail/register_detail_form.dart';
import 'package:cuu_tro_flutter/page/register/select_type/register_form.dart';
import 'package:cuu_tro_flutter/widgets/socal_card.dart';
import 'package:flutter/material.dart';

class RegisterDetailBody extends StatefulWidget {
  @override
  _RegisterDetailBodyState createState() => _RegisterDetailBodyState();
}

class _RegisterDetailBodyState extends State<RegisterDetailBody> {

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
                Text(" Detail Information", style: headingStyle),
                Text(
                  "Fill more about you for us to \n  know about you Hero !",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RegisterDetailForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  'Joining  with others to make Viet Nam stronger !',
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

