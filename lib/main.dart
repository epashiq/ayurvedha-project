import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/controller/provider/branch_provider.dart';
import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
import 'package:ayurvedha_project/controller/provider/treatment_provider.dart';
import 'package:ayurvedha_project/controller/provider/update_branch_provider.dart';
import 'package:ayurvedha_project/controller/provider/update_treatment_provider.dart';
import 'package:ayurvedha_project/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => PatientProvider()),
        ChangeNotifierProvider(create: (_) => BranchProvider()),
        ChangeNotifierProvider(create: (_) => TreatmentProvider()),
        ChangeNotifierProvider(create: (_) => UpdateTreatmentProvider()),
        ChangeNotifierProvider(create: (_) => UpdateBranchProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
