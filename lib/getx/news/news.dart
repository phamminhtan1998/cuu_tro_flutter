

import 'dart:convert';

News newsFromJson(String str) => News.fromJson(json.decode(str));

String newsToJson(News data) => json.encode(data.toJson());

class News {
  News({
    this.id,
    this.createdAt,
    this.avatar,
    this.title,
    this.description,
    this.shortDescription,
    this.content,
    this.author,
    this.createDate,
    this.createBy,
    this.updateDate,
    this.updateBy,
  });

  String id;
  DateTime createdAt;
  String avatar;
  String title;
  String description;
  String shortDescription;
  String content;
  String author;
  DateTime createDate;
  String createBy;
  DateTime updateDate;
  String updateBy;

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
    avatar: json["avatar"],
    title: json["title"],
    description: json["description"],
    shortDescription: json["shortDescription"],
    content: json["content"],
    author: json["author"],
    createDate: DateTime.parse(json["createDate"]),
    createBy: json["createBy"],
    updateDate: DateTime.parse(json["updateDate"]),
    updateBy: json["updateBy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt.toIso8601String(),
    "avatar": avatar,
    "title": title,
    "description": description,
    "shortDescription": shortDescription,
    "content": content,
    "author": author,
    "createDate": createDate.toIso8601String(),
    "createBy": createBy,
    "updateDate": updateDate.toIso8601String(),
    "updateBy": updateBy,
  };
}
