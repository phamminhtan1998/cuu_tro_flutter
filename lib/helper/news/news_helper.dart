import 'dart:isolate';
import 'package:cuu_tro_flutter/getx/news/news.dart';
import 'package:cuu_tro_flutter/helper/news/news_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NewsHelper {
  Future<List<News>> getNews() async {
    NewsDTO newsDTO = new NewsDTO();
    NewsDTO data = await compute(parseNews, newsDTO);
      return data.news;
  }
  static Future<NewsDTO> parseNews(NewsDTO newsDTO) async {
    Dio dio = new Dio();
    var value =
        await dio.get("https://608399455dbd2c001757b900.mockapi.io/news");
    if (value.statusCode == 200) {
      List<dynamic> responseDes = value.data;
      List<News> newsDes =
          responseDes.map((e) => News.fromJson(e)).toList(growable: true);
      newsDTO.description = "SUCCESSFULLY";
      newsDTO.news = newsDes;
      return newsDTO;
    } else {
      newsDTO.description = "ERROR";
      List<News> newsSrc = new List.empty(growable: true);
      newsDTO.news = newsSrc;
      return newsDTO;
    }
  }
}
