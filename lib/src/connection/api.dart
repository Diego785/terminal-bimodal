import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CallApi {
  String url = "http://192.168.56.1/terminal_bimodal/public/api/";
  postData(data, url2) async {
    String urlFinal = url + url2;
    return await http.post(
      Uri.parse(urlFinal),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
