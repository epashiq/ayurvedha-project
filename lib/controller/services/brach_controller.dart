// import 'dart:convert';
// import 'dart:developer';

// import 'package:ayurvedha_project/controller/services/auth_services.dart';
// import 'package:ayurvedha_project/model/branch_model.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/widgets.dart';
// import 'package:provider/provider.dart';

// class BrachController {
//   List<Branch> _branches = [];

//   List<Branch> get branches => _branches;
//   final Dio dio = Dio();
//   Future<Branch?> getBranches(String token) async {
//     try {
//       final Response resp = await dio.get(
//           'https://flutter-amr.noviindus.in/api/BranchList',
//           options: Options(headers: {'Authorization': 'Bearer$token'}));
//       if (resp.statusCode == 200) {
//         final Map<String, dynamic> jsonData = json.decode(resp.data);
//         final List<dynamic> branchesData = jsonData['branches'];
//         _branches = branchesData
//             .map((branchData) => Branch.fromJson(branchData))
//             .toList();
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }
