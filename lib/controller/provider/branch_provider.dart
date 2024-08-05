// import 'dart:developer';

// import 'package:ayurvedha_project/controller/services/brach_controller.dart';
// import 'package:ayurvedha_project/model/branch_model.dart';
// import 'package:flutter/cupertino.dart';

// class BranchProvider with ChangeNotifier {
//   List<Branch> branches = [];
//   List<Branch> get branch => branches;
//   Future<Branch?> fetchBranches(String token) async {
//     try {
//       final BrachController controller = BrachController();
//       await controller.getBranches(token);
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

import 'package:ayurvedha_project/model/branches_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BranchProvider with ChangeNotifier {
  List<Branch> _branches = [];

  List<Branch> get branches => _branches;

  Future<void> fetchBranches(String token) async {
    const url = 'https://flutter-amr.noviindus.in/api/BranchList';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> branchesData = jsonData['branches'];
      _branches = branchesData
          .map((branchData) => Branch.fromJson(branchData))
          .toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load branches');
    }
  }
}
