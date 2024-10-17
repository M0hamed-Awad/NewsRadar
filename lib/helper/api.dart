import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  final Dio dio = Dio();

  Future<dynamic> get({
    required String url,
    String? token,
  }) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll(
        {
          "Authorization": "Bearer $token",
        },
      );
    }

    Response response = await dio.get(
      url,
      options: Options(
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        'There was an error in status code ${response.statusCode}',
      );
    }
  }

  Future<dynamic> post({
    required String url,
    required dynamic requestBody,
    String? token,
  }) async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Accept": "application/json",
    };

    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    Response response = await dio.post(
      url,
      data: requestBody,
      options: Options(
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        'There was an error in status code ${response.statusCode}\nWith body ${response.data}',
      );
    }
  }

  Future<dynamic> put({
    required String url,
    required dynamic requestBody,
    String? token,
  }) async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }

    debugPrint('url: $url,\nbody: $requestBody,\ntoken: $token');

    Response response = await dio.put(
      url,
      data: requestBody,
      options: Options(
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      debugPrint('\nresponse: ${response.data}');
      return response.data;
    } else {
      throw Exception(
        'There was an error in status code ${response.statusCode}\nWith body ${response.data}',
      );
    }
  }
}
