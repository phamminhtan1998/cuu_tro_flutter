import 'package:cuu_tro_flutter/helper/news/news_helper.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'news.dart';

class NewsCtrl extends GetxController {
  var news = List<News>().obs;
  NewsHelper newsHelper = new NewsHelper();

  @override
  void onInit() {
    // TODO: implement onInit
    getNews();
  }
  Future<void> getNews() async{
    news.value = await newsHelper.getNews();
  }

}
