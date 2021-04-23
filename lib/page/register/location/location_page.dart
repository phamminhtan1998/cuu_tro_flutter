import 'package:cuu_tro_flutter/common/constants.dart';
import 'package:cuu_tro_flutter/common/size_config.dart';
import 'package:cuu_tro_flutter/page/register/location/location_form.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  static String routeName="/location_page";
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
                Text(" Location Information", style: headingStyle),
                Text(
                  " Please Tell us where you are !\nWe need to know ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                LocationForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Provide us your location help us more  !',
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

