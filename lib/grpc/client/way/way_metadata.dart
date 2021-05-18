

import 'dart:convert';

WayMetadata wayMetadataFromJson(String str) => WayMetadata.fromJson(json.decode(str));

String wayMetadataToJson(WayMetadata data) => json.encode(data.toJson());

class WayMetadata {
  WayMetadata({
    this.id,
    this.name,
    this.description,
    this.idPerson,
    this.location,
    this.newWayType,
  });

  String id;
  String name;
  String description;
  String idPerson;
  String location;
  String newWayType;

  factory WayMetadata.fromJson(Map<String, dynamic> json) => WayMetadata(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    idPerson: json["idPerson"],
    location: json["location"],
    newWayType: json["newWayType"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "idPerson": idPerson,
    "location": location,
    "newWayType": newWayType,
  };
  Map<String,String> toStringJson()=>{
    "id": id.toString(),
    "name": name.toString(),
    "description": description.toString(),
    "idPerson": idPerson.toString(),
    "location": location.toString(),
    "newWayType": newWayType.toString(),
  };
}
