import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';

mixin ConnectedModel on Model {

  Future<String> getHello() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get("http://localhost:8085/",
    options: Options(headers: {
    }));//, queryParameters: {"id": 12, "name": "wendu"}
    print(response);
    notifyListeners();
    return response.toString();
  }
}