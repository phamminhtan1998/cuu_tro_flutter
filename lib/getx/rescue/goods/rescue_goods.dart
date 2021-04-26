// To parse this JSON data, do
//
//     final rescueGoods = rescueGoodsFromJson(jsonString);

import 'dart:convert';

RescueGoods rescueGoodsFromJson(String str) => RescueGoods.fromJson(json.decode(str));

String rescueGoodsToJson(RescueGoods data) => json.encode(data.toJson());

class RescueGoods {
  RescueGoods({
    this.id,
    this.idRescuer,
    this.nameArea,
    this.coreGoods,
    this.additionalGoods,
    this.isArchived,
    this.createDate,
    this.createBy,
    this.updateDate,
    this.updateBy,
  });

  String id;
  String idRescuer;
  String nameArea;
  Goods coreGoods;
  Goods additionalGoods;
  bool isArchived;
  DateTime createDate;
  String createBy;
  DateTime updateDate;
  String updateBy;

  factory RescueGoods.fromJson(Map<String, dynamic> json) => RescueGoods(
    id: json["id"],
    idRescuer: json["idRescuer"],
    nameArea: json["nameArea"],
    coreGoods: Goods.fromJson(json["coreGoods"]),
    additionalGoods: Goods.fromJson(json["additionalGoods"]),
    isArchived: json["isArchived"],
    createDate: DateTime.parse(json["createDate"]),
    createBy: json["createBy"],
    updateDate: DateTime.parse(json["updateDate"]),
    updateBy: json["updateBy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "idRescuer": idRescuer,
    "nameArea": nameArea,
    "coreGoods": coreGoods.toJson(),
    "additionalGoods": additionalGoods.toJson(),
    "isArchived": isArchived,
    "createDate": createDate.toIso8601String(),
    "createBy": createBy,
    "updateDate": updateDate.toIso8601String(),
    "updateBy": updateBy,
  };
}

class Goods {
  Goods();

  factory Goods.fromJson(Map<String, dynamic> json) => Goods(
  );

  Map<String, dynamic> toJson() => {
  };
}
