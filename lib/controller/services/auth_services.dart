import 'dart:developer';

import 'package:ayurvedha_project/model/auth_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class AuthServices with ChangeNotifier {
  final Dio dio = Dio();

  Future<AuthModel?> login(String userName, String password) async {
    try {
      final Response resp = await dio.post(
          'https://flutter-amr.noviindus.in/api/Login',
          data: {'username': userName, 'password': password});
      if (resp.statusCode == 200) {
        return AuthModel.fromJson(resp.data);
      }
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }
}
