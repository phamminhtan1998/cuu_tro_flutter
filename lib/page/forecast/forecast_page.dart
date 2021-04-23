import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  static String routeName= "/forecast_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Forecast"),
      ),
    );
  }
}
