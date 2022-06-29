import 'dart:convert';

import 'package:yalla/src/model/httpResult/http_result.dart';
import 'package:http/http.dart' as http;
class AppProvider{
  static const baseUrl = "https://fastfood.stemedu.uz/api/";

  Future<HttpResult> _postRequest(String url,body) async{
    print(url);
    print(body);
    http.Response response = await http.post(
      Uri.parse(url),
      body: body
    );
    return _result(response);
  }

  Future<HttpResult> _getRequest(String url) async {
    print(url);
    http.Response response = await http.get(
      Uri.parse(url),
    );
    return _result(response);
  }
  HttpResult _result(http.Response response) {
    print(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return HttpResult(
        isSuccess: true,
        statusCode: response.statusCode,
        result: json.decode(utf8.decode(response.bodyBytes)),
      );
    } else {
      return HttpResult(
        isSuccess: false,
        statusCode: response.statusCode,
        result: response.body,
      );
    }
  }

  Future<HttpResult> getProduct(int id) async {
    String url = baseUrl+'products/';
    return await _getRequest(url);
  }
}