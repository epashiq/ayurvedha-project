// import 'dart:developer';

// import 'package:ayurvedha_project/controller/services/auth_services.dart';
// import 'package:ayurvedha_project/model/auth_model.dart';
// import 'package:flutter/material.dart';

// class AuthProvider with ChangeNotifier {
//   String _token = '';
//   String get token => _token;
//   void setToken(String token) {
//     _token = token;
//     notifyListeners();
//   }
//   Future<AuthModel?> login(String userName, String password) async {
//     try {
//       final AuthServices services = AuthServices();
//       await services.login(userName, password);
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  String _token = '';
  Map<String, dynamic> _userDetails = {};

  String get token => _token;

  void setToken(String token) {
    _token = token;
    notifyListeners();
  }

  Map<String, dynamic> get userDetails => _userDetails;

  Future<void> login(String username, String password) async {
    const url = 'https://flutter-amr.noviindus.in/api/Login';
    final response = await http.post(
      Uri.parse(url),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      _token = responseData['token'];
      _userDetails = responseData['user_details'];
      notifyListeners();
    } else {
      throw Exception('Failed to login');
    }
  }
}
