import 'package:cuu_tro_flutter/page/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icons.dart';

class NewsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("News Page"),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: InkWell(
          child: Icon(LineIcons.alternateSignIn),
          onTap: (){
            Get.toNamed(LoginPage.routeName);
          },
        ),
      ),

    );
  }
}
