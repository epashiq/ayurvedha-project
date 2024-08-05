import 'dart:convert';
import 'dart:developer';

import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/model/patient_model.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PatientProvider with ChangeNotifier {
  List<PatientModel> _patients = [];
  List<PatientModel> get patients => _patients;

  Future<void> fetchData(BuildContext context) async {
    try {
      final url = Uri.parse('https://flutter-amr.noviindus.in/api/PatientList');
      final authProvider = Provider.of<AuthProvider>(context);
      final token = authProvider.token;
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final List<dynamic> patientsData = jsonData['patient'];
        // _patients =
        //     patientsData.map((value) => PatientModel.fromJson(value)).toList();
        _patients = (jsonData['patient'] as List)
            .map((item) => PatientModel.fromJson(item))
            .toList();
        notifyListeners();
      } else {
        log('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching data: $e');
    }
  }
}


