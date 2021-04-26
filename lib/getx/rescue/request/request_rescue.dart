
import 'dart:convert';

RequestRescue requestRescueFromJson(String str) => RequestRescue.fromJson(json.decode(str));

String requestRescueToJson(RequestRescue data) => json.encode(data.toJson());

class RequestRescue {
  RequestRescue({
    this.id,
    this.description,
    this.time,
    this.coordinates,
    this.location,
    this.idPerson,
    this.message,
    this.level,
    this.createDate,
    this.createBy,
    this.updateDate,
    this.updateBy,
  });

  String id;
  String description;
  DateTime time;
  Coordinates coordinates;
  String location;
  String idPerson;
  String message;
  String level;
  DateTime createDate;
  String createBy;
  DateTime updateDate;
  String updateBy;

  factory RequestRescue.fromJson(Map<String, dynamic> json) => RequestRescue(
    id: json["id"],
    description: json["description"],
    time: DateTime.parse(json["time"]),
    coordinates: Coordinates.fromJson(json["coordinates"]),
    location: json["location"],
    idPerson: json["idPerson"],
    message: json["message"],
    level: json["level"],
    createDate: DateTime.parse(json["createDate"]),
    createBy: json["createBy"],
    updateDate: DateTime.parse(json["updateDate"]),
    updateBy: json["updateBy"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "description": description,
    "time": time.toIso8601String(),
    "coordinates": coordinates.toJson(),
    "location": location,
    "idPerson": idPerson,
    "message": message,
    "level": level,
    "createDate": createDate.toIso8601String(),
    "createBy": createBy,
    "updateDate": updateDate.toIso8601String(),
    "updateBy": updateBy,
  };
}

class Coordinates {
  Coordinates({
    this.serialVersionUid,
    this.type,
    this.x,
    this.y,
  });

  int serialVersionUid;
  String type;
  double x;
  double y;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
    serialVersionUid: json["serialVersionUID"],
    type: json["TYPE"],
    x: json["x"].toDouble(),
    y: json["y"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "serialVersionUID": serialVersionUid,
    "TYPE": type,
    "x": x,
    "y": y,
  };
}
