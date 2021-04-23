import 'package:cuu_tro_flutter/page/register/detail/register_detail.dart';
import 'package:cuu_tro_flutter/page/register/location/location_page.dart';
import 'package:cuu_tro_flutter/page/register/select_role/role_page.dart';
import 'package:cuu_tro_flutter/page/register/select_type/register_page.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class RegisterStepper extends StatefulWidget {
  static String routeName = '/register_stepper';

  @override
  _RegisterStepperState createState() => _RegisterStepperState();
}

class _RegisterStepperState extends State<RegisterStepper> {
  List<int> header = [1, 2, 3, 4];

  int currentIndex = 0;
  int selectedHeaderIndex = 0;

  List<Widget> contents = [
    RegisterPage(),
    RegisterDetail(),
    LocationPage(),
    RolePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: header.length,
              itemBuilder: (context, index) {
                return Row(children: [
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 30,
                      margin: index != 0
                          ? EdgeInsets.symmetric(horizontal: 10)
                          : EdgeInsets.only(left: 30, right: 10),
                      decoration: BoxDecoration(
                          color: selectedHeaderIndex == index
                              ? Colors.blue
                              : selectedHeaderIndex > index
                                  ? Colors.green
                                  : Colors.grey,
                          shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        header[index].toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    onTap: () {
                      print(index);
                      setState(() {
                        currentIndex = index;
                        selectedHeaderIndex = index;
                      });
                    },
                  ),
                  (index != header.length - 1)
                      ? DottedLine(
                          lineLength: 20,
                          dashColor: Colors.green,
                        )
                      : SizedBox(
                          width: 0,
                          height: 0,
                        )
                ]);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: contents[currentIndex]),
        ],
      ),
    );
  }
}
