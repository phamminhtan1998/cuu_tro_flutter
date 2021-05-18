
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);
  static String routeName = "/news_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News"),
          centerTitle: true,
        ),
      body: Column(
        children: [
          Text("Breaking News"),
          Container(

            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Column(
              children: [
                Image.network("https://picsum.photos/200/300"),
                Text("Lorem fafaflajflafafd"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.people),
                    Text("Lorem name"),
                    Text("20-11-2021"),
                  ],
                ),
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
