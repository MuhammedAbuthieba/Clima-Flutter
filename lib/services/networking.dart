import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String url;
  NetworkHelper({this.url});

  Future<dynamic> getData() async {
    try {
      http.Response response = await http.get(this.url);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return response.statusCode;
      }
    } catch (e) {
      print(e);
      return 'Failed to connection by internet';
    }
  }
}
