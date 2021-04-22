import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String message;

  const SecondPage({Key key, this.message}) : super(key: key);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("trang detail"),
      ),
      body: Center(
        child: Text(this.widget.message),
      ),
    );
  }
}
