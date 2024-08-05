import 'dart:developer';

import 'package:ayurvedha_project/model/branches_model.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class BranchUpdateServices {
  List<Branch> _branches = [];

  List<Branch> get branches => _branches;
  Future<void> updateBranches(
      Branch branch, String token, BuildContext context) async {
    try {
      final Response resp = await http.post(
          Uri.parse(
            'https://flutter-amr.noviindus.in/api/BranchUpdate',
          ),
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Bearer $token',
          },
          body: {
            'id': branch.id.toString(),
            'name': branch.name,
            'patients_count': branch.patientsCount.toString(),
            'location': branch.location,
            'phone': branch.phone,
            'mail': branch.mail,
            'address': branch.address,
            'gst': branch.gst,
            'is_active': branch.isActive ? 'true' : 'false'
          });
      if (resp.statusCode == 200) {
        final index = _branches.indexWhere((b) => b.id == branch.id);
        if (index != -1) {
          _branches[index] = branch;
        }
        // final updateBranches = Branch.fromJson(json.decode(resp.body));
        // _branches = branches
        //     .map((i) => i.id == updateBranches.id ? updateBranches : i)
        //     .toList();
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
