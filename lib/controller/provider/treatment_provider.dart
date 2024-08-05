import 'dart:convert';

import 'package:ayurvedha_project/model/treatments_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TreatmentProvider with ChangeNotifier {
  List<TreatmentsModel> _treatment = [];
  List<TreatmentsModel> get treatment => _treatment;
  Future<void> fetchTreatment(String token) async {
    const url = 'https://flutter-amr.noviindus.in/api/TreatmentList';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> treatmentsData = jsonData['treatments'];
      _treatment =
          treatmentsData.map((value) => TreatmentsModel.fromJson(value)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load patients list');
    }
  }
}
