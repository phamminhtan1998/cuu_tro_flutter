// To parse this JSON data, do
//
//     final account = accountFromJson(jsonString);

import 'dart:convert';

Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

class Account {
  Account({
    this.fullName,
    this.dob,
    this.location,
    this.lat,
    this.lon,
    this.accountIdf,
    this.password,
    this.accountType,
    this.phoneNumber,
    this.playerId,
    this.pushToken,
    this.avatarUrl,
  });

  String fullName;
  double dob;
  String location;
  double lat;
  double lon;
  String accountIdf;
  String password;
  String accountType;
  String phoneNumber;
  String playerId;
  String pushToken;
  String avatarUrl;

  factory Account.fromJson(Map<String, dynamic> json) => Account(
    fullName: json["fullName"],
    dob: json["dob"].toDouble(),
    location: json["location"],
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
    accountIdf: json["accountIdf"],
    password: json["password"],
    accountType: json["accountType"],
    phoneNumber: json["phoneNumber"],
    playerId: json["playerId"],
    pushToken: json["pushToken"],
    avatarUrl: json["avatarUrl"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "dob": dob,
    "location": location,
    "lat": lat,
    "lon": lon,
    "accountIdf": accountIdf,
    "password": password,
    "accountType": accountType,
    "phoneNumber": phoneNumber,
    "playerId": playerId,
    "pushToken": pushToken,
    "avatarUrl": avatarUrl,
  };
}
