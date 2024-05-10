// ignore_for_file: unused_import

import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = "http://restapi.aktekweb.com/api/b2bapi/";

class Api{
  static Future<http.Response> loginsp(String temEmail, String temSifre) async {
    var url = "${baseUrl}LoginSp";
    String body = json.encode({'TemMail': temEmail, 'TemSifre': temSifre});
      return http.post(Uri.parse(url),      
        headers: {"Content-Type": "application/json"}, body: body);
  }

  static Future<http.Response> getUser(int userId) async {
    var userID = userId;
    var url = "${baseUrl}getUser?userId=$userID";
    return await http
        .get(Uri.parse(url), headers: {"Accept": "application/json"});
  }

}