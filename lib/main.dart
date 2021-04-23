
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:cuu_tro_flutter/router/custome_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/custome_colors.dart' as CustomeColors;

// @dart=2.9
void main() {


  runApp(GetMaterialApp(
    theme: ThemeData(
        fontFamily: "Muli",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: CustomeColors.kPrimaryColor,
        )),
    initialRoute: LoginPage.routeName,
    getPages: CustomeRoute.routes,
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
      home: LoginPage(),
    );
  }
}
