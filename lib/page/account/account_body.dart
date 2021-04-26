import 'package:cached_network_image/cached_network_image.dart';
import 'package:cuu_tro_flutter/getx/account/account_controller.dart';
import 'package:cuu_tro_flutter/getx/expanded/expanded_controller.dart';
import 'package:cuu_tro_flutter/getx/shared_preference/shared_preference_ctrl.dart';
import 'package:cuu_tro_flutter/page/home_page.dart';
import 'package:cuu_tro_flutter/widgets/custom_list_title.dart';
import 'package:diffutil_sliverlist/diffutil_sliverlist.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import '../../common/custom_colors.dart' as CustomColors;

class AccountBody extends StatelessWidget {
  AccountController accountController = Get.find();
  SharedPreferenceCtrl sharedPreferenceCtrl = Get.find();
  ExpandedController expandedController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Obx(
              () => CustomListTile(
                title: "Hello !",
                content: accountController.account.value.fullName,
                errorTitle: "No Account Login",
                tailIcon: Icon(LineIcons.alternateSignOut),
                tailIconPress: () async {
                  await _logOut();
                  // Get.toNamed(HomePage.routeName);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ExpandablePanel(
              header: ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.account_circle_outlined),
              ),
              collapsed: SizedBox.shrink(),
              expanded: Card(
                borderOnForeground: true,
                margin: EdgeInsets.all(20),
                child:Table(
                  textDirection: TextDirection.ltr,
                  children: [
                    TableRow(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Name"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Do thi dieu linh"),
                        ),
                      ]
                    ),
                    TableRow(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Name"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Do thi dieu linh"),
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Name"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Do thi dieu linh"),
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Name"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Do thi dieu linh"),
                          ),
                        ]
                    ),

                  ],
                ),
              )
            ),
            ExpandablePanel(
              header: ListTile(
                title: Text("Update"),
                leading: Icon(Icons.update_outlined),
              ),
              collapsed: SizedBox.shrink(),
              expanded: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50,
                  ),
                  Container(
                    color: Colors.purple,
                    height: 50,
                  ),
                ],
              ),
            ),
            ExpandablePanel(
              header: ListTile(
                title: Text("TimeLine"),
                leading: Icon(Icons.lock_clock),
              ),
              collapsed: SizedBox.shrink(),
              expanded: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50,
                  ),
                  Container(
                    color: Colors.purple,
                    height: 50,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<bool> _logOut() async {
    accountController.account.value = null;
    sharedPreferenceCtrl.removeAccount();
  }
}
