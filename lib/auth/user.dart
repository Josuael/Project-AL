//     final users = usersFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
  final String username;
  final String pass;
  final int tlpn;

  Users({
    required this.username,
    required this.pass,
    required this.tlpn,
  });

  factory Users.fromMap(Map<String, dynamic> json) => Users(
        username: json["username"],
        pass: json["pass"],
        tlpn: json["tlpn"],
      );

  Map<String, dynamic> toMap() => {
        "username": username,
        "pass": pass,
        "tlpn": tlpn,
      };
}
