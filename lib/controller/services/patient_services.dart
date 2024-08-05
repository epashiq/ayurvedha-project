// // import 'dart:convert';
// // import 'dart:developer';

// // import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
// // import 'package:ayurvedha_project/controller/services/auth_services.dart';
// // import 'package:ayurvedha_project/model/patient_model.dart';
// // import 'package:dio/dio.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';

// // class PatientServices {
// //   final Dio dio = Dio();
// //   List<PatientModel> patientsList = [];

// //   Future<PatientModel?> getPatientsData(BuildContext context) async {
// //     try {
// //       final token = Provider.of<AuthServices>(context, listen: false).token;

// //       final Response resp = await dio.get(
// //           'https://flutter-amr.noviindus.in/api/PatientList',
// //           options: Options(headers: {'Authorization': 'Bearer $token'}));
// //       if (resp.statusCode == 200) {
// //         final List<dynamic> jsonData = json.decode(resp.data);
// //         patientsList =
// //             jsonData.map((item) => PatientModel.fromJson(item)).toList();
// //          patientsList;
// //       } else {
// //         log('Failed to load patient data. Status code: ${resp.statusCode}');
// //         return null;
// //       }
// //     } catch (e) {
// //       log(e.toString());
// //       return null;
// //     }
// //   }
// // }

// // import 'dart:convert';
// // import 'dart:developer';

// // import 'package:ayurvedha_project/model/patient_model.dart';
// // import 'package:dio/dio.dart';

// // class PatientServices {
// //   final Dio dio = Dio();
// //   List<PatientModel> patientsList = [];

// //   Future<List<PatientModel>?> getPatientsData(String token) async {
// //     try {

// //       final Response resp = await dio.get(
// //         'https://flutter-amr.noviindus.in/api/PatientList',
// //         options: Options(
// //           headers: {'Authorization': 'Bearer $token'},
// //         ),
// //       );

// //       if (resp.statusCode == 200) {
// //         final dynamic jsonData = resp.data;
// //         if (jsonData is String) {
// //           final List<dynamic> data = json.decode(jsonData);
// //           patientsList = data.map((item) => PatientModel.fromJson(item)).toList();
// //         } else if (jsonData is List) {
// //           patientsList = jsonData.map((item) => PatientModel.fromJson(item)).toList();
// //         } else {
// //           log('Unexpected response data format');
// //           return null;
// //         }
// //         return patientsList;
// //       } else {
// //         log('Failed to load patient data. Status code: ${resp.statusCode}');
// //         log('Response data: ${resp.data}');
// //         return null;
// //       }
// //     } catch (e) {
// //       log('Error fetching patient data: ${e.toString()}');
// //       return null;
// //     }
// //   }
// // }

// import 'dart:convert';
// import 'dart:developer';

// import 'package:ayurvedha_project/model/patient_model.dart';
// import 'package:dio/dio.dart';

// class PatientServices {
//   // List<Patient> _patients = [];
//   // List<Patient> get patient => _patients;
//   final Dio dio = Dio();
//   Future <PatientModel?> getPatientsData(String token) async {
//     try {
//       final response = await dio.get(
//           'https://flutter-amr.noviindus.in/api/PatientList',
//           options: Options(headers: {'Authorization': 'Bearer$token'}));
//       if (response.statusCode == 200) {
//         return PatientModel.fromJson(response.data);
//       //   final Map<String, dynamic> jsonData = json.decode(response.data);
//       //   final List<dynamic> patientsData = jsonData['patients'];
//       //   _patients =
//       //       patientsData.map((value) => Patient.fromJson(value)).toList();
//       //  return _patients;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }
