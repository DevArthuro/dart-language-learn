// To parse this JSON data, do
//
//     final reqResponse = reqResponseFromJson(jsonString);

import 'dart:convert';

List<ReqResponse> reqResponseFromJson(String str) => List<ReqResponse>.from(
  json.decode(str).map((x) => ReqResponse.fromJson(x)),
);

String reqResponseToJson(List<ReqResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReqResponse {
  DateTime createdAt;
  String name;
  String avatar;
  String id;

  ReqResponse({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  factory ReqResponse.fromJson(Map<String, dynamic> json) => ReqResponse(
    createdAt: DateTime.parse(json["createdAt"]),
    name: json["name"],
    avatar: json["avatar"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "name": name,
    "avatar": avatar,
    "id": id,
  };
}
