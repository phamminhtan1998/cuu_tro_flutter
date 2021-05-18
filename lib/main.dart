
import 'package:cuu_tro_flutter/grpc/hello/hello_grpc.dart';
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:cuu_tro_flutter/page/news/news_page.dart';
import 'package:cuu_tro_flutter/page/register/detail/register_detail.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:cuu_tro_flutter/router/custom_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'common/custom_colors.dart' as CustomeColors;
import 'getx/form/errors_login_form_ctrl.dart';

// @dart=2.9
void main() {

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: CustomeColors.kPrimaryColor));

  runApp(GetMaterialApp(
    theme: ThemeData(
        fontFamily: "Muli",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: CustomeColors.kPrimaryColor,
        )),
    initialRoute: NewsPage.routeName,
    getPages: CustomRoute.routes,
    defaultTransition: Transition.rightToLeft,
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
