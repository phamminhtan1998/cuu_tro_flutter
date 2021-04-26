import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:cuu_tro_flutter/getx/forecast/forecast_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ForecastPage extends StatefulWidget {
  static String routeName= "/forecast_page";

  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  ForecastCtrl  forecastCtrl = Get.put(ForecastCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:WebView(
            initialUrl: "https://weather.com/vi-VN/weather/today/l/VMXX0006:1:VM?Goto=Redirected",
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (url) {
              forecastCtrl.isCreated.value=true;
            },
          ),
        )
    );
  }

  // void createIsolate(){
  //   Isolate.spawn((message) { }, message)
  // }
}