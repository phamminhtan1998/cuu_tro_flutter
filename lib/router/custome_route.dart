import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:cuu_tro_flutter/page/register/register_page.dart';
import 'package:get/get.dart';

class CustomeRoute {
  static final routes = [
    // LOGIN URL
    GetPage(name: LoginPage.routeName, page: () => LoginPage()),
    // REGISTER URL
    GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),
    //5 MainPage
    GetPage(name: HomePage.routeName, page: () => HomePage()),

  ];
}
