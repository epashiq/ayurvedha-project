// import 'dart:developer';

// import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
// import 'package:ayurvedha_project/model/treatments_model.dart';
// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';

// class TreatmentUpdateService {
//   List<TreatmentsModel> _treatment = [];
//   List<TreatmentsModel> get treatments => _treatment;

//   final String baseUrl = 'https://flutter-amr.noviindus.in/api';
//   Future<void> updateTreatment(
//       TreatmentsModel treatment, BuildContext context, String token) async {
//     final token = Provider.of<AuthProvider>(context, listen: false).token;

//     try {
//       final Response resp = await http.post(
//         Uri.parse(
//           '$baseUrl/TreatmentUpdate',
//         ),
//         headers: {
//           'Content-Type': 'application/x-www-form-urlencoded',
//           'Authorization': 'Bearer $token',
//         },
//         body: {
//           'id': treatment.id.toString(),
//           'name': treatment.name,
//           'duration': treatment.duration,
//           'price': treatment.price,
//           'is_active': treatment.isActive.toString(),
//           'created_at': treatment.createdAt.toIso8601String(),
//           'updated_at': treatment.updatedAt.toIso8601String(),
//         },
//       );
//       if (resp.statusCode == 200) {
//         final index = _treatment.indexWhere((t) => t.id == treatment.id);
//         if (index != -1) {
//           _treatment[index] = treatment;
//         }
//         // final updatedTreatement =
//         //     TreatmentsModel.fromJson(json.decode(resp.body));
//         // _treatment = treatments
//         //     .map((i) => i.id == updatedTreatement.id ? updatedTreatement : i)
//         //     .toList();
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

import 'dart:developer';
import 'package:ayurvedha_project/model/treatments_model.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:ayurvedha_project/controller/provider/auth_provider.dart';

class TreatmentUpdateService {
  List<TreatmentsModel> _treatment = [];
  List<TreatmentsModel> get treatments => _treatment;

  final String baseUrl = 'https://flutter-amr.noviindus.in/api';
  
  Future<void> updateTreatment(
      TreatmentsModel treatment, BuildContext context, String token) async {
    final token = Provider.of<AuthProvider>(context, listen: false).token;

    try {
      final Response resp = await http.post(
        Uri.parse('$baseUrl/TreatmentUpdate'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer $token',
        },
        body: {
          'id': treatment.id.toString(),
          'name': treatment.name,
          'duration': treatment.duration,
          'price': treatment.price,
          'is_active': treatment.isActive.toString(),
          'created_at': treatment.createdAt.toIso8601String(),
          'updated_at': treatment.updatedAt.toIso8601String(),
        },
      );

      if (resp.statusCode == 200) {
        final index = _treatment.indexWhere((t) => t.id == treatment.id);
        if (index != -1) {
          _treatment[index] = treatment;
        }
      } else {
        log('Failed to update treatment: ${resp.body}');
      }
    } catch (e) {
      log('Error updating treatment: $e');
    }
  }
}
