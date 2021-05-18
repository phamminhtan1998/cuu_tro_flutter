import 'package:cuu_tro_flutter/page/account/account_page.dart';
import 'package:cuu_tro_flutter/page/forecast/forecast_page.dart';
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:cuu_tro_flutter/page/news/news_page.dart';
import 'package:cuu_tro_flutter/page/register/detail/register_detail.dart';
import 'package:cuu_tro_flutter/page/register/location/location_page.dart';
import 'package:cuu_tro_flutter/page/register/select_role/role_page.dart';
import 'package:cuu_tro_flutter/page/register/select_type/register_page.dart';
import 'package:cuu_tro_flutter/page/sos/request_rescue_page.dart';
import 'package:cuu_tro_flutter/page/stepper/register_stepper.dart';
import 'package:get/get.dart';

class CustomRoute {
  static final routes = [
    // LOGIN URL
    GetPage(name: LoginPage.routeName, page: () => LoginPage()),

    // REGISTER URL
    GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),

    //5 MainPage
    GetPage(name: HomePage.routeName, page: () => HomePage()),

    //REGISTER STEPPER
    GetPage(name: RegisterStepper.routeName, page: () => RegisterStepper()),

    //REGISTER DETAIL
    GetPage(name: RegisterDetail.routeName, page: () => RegisterDetail()),

    //LOCATION DETAIL
    GetPage(name: LocationPage.routeName, page: () => LocationPage()),

    //ROLE CHOOSE
    GetPage(name: RolePage.routeName, page: () => RolePage()),

    //FORECAST PAGE
    GetPage(name: ForecastPage.routeName, page: () => ForecastPage()),

    //REQUEST RESCUE
    GetPage(name: RequestRescuePage.routeName, page: () => ForecastPage()),

    //ACCOUNT PAGE
    GetPage(name: AccountPage.routeName, page: () => AccountPage()),

    GetPage(name: NewsPage.routeName, page: ()=>NewsPage())
  ];
}
