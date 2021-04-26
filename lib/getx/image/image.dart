
import 'dart:convert';

Image imageFromJson(String str) => Image.fromJson(json.decode(str));

String imageToJson(Image data) => json.encode(data.toJson());

class Image {
  Image({
    this.id,
    this.name,
    this.url,
    this.imagePath,
    this.description,
    this.idParent,
    this.type,
    this.specifyType,
    this.createDate,
    this.createBy,
    this.updateDate,
    this.updateBy,
  });

  String id;
  String name;
  String url;
  String imagePath;
  String description;
  String idParent;
  String type;
  String specifyType;
  DateTime createDate;
  String createBy;
  DateTime updateDate;
  String updateBy;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    name: json["name"],
    url: json["url"],
    imagePath: json["imagePath"],
    description: json["description"],
    idParent: json["idParent"],
    type: json["type"],
    specifyType: json["specifyType"],
    createDate: DateTime.parse(json["createDate"]),
    createBy: json["createBy"],
    updateDate: DateTime.parse(json["updateDate"]),
    updateBy: json["updateBy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url": url,
    "imagePath": imagePath,
    "description": description,
    "idParent": idParent,
    "type": type,
    "specifyType": specifyType,
    "createDate": createDate.toIso8601String(),
    "createBy": createBy,
    "updateDate": updateDate.toIso8601String(),
    "updateBy": updateBy,
  };
}
