// import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
// import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
// import 'package:ayurvedha_project/controller/services/patient_services.dart';
// import 'package:ayurvedha_project/model/patient_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class PatientsPage extends StatefulWidget {
//   const PatientsPage({super.key});

//   @override
//   State<PatientsPage> createState() => _PatientsPageState();
// }

// class _PatientsPageState extends State<PatientsPage> {
//   // late Future<PatientModel?> patientData;

//   // bool _isInit = true;

//   // @override
//   // void didChangeDependencies() {
//   //   super.didChangeDependencies();

//   //   if (_isInit) {
//   //     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//   //     patientData = PatientServices().getPatientsData(authProvider.token);
//   //     _isInit = false;
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final patientProvider = Provider.of<PatientProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.notifications_none_outlined))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                   height: 50,
//                   width: 250,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         prefixIcon: Icon(Icons.search),
//                         labelText: 'Search For Treatments',
//                         labelStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                             color: Color(0XFF000000)),
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(20)))),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter some text';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 100,
//                   color: const Color(0XFF006837),
//                   child: TextButton(
//                     onPressed: () {},
//                     style: TextButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         backgroundColor: Colors.transparent,
//                         shadowColor: Colors.transparent,
//                         elevation: 5),
//                     child: const Text(
//                       'Search',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Sort By :',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 200,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
//                         hintText: 'Date',
//                         labelStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                             color: Color(0XFF000000)),
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(20)))),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter some text';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//                 child: patientProvider.patients.isEmpty
//                     ? Center(child: CircularProgressIndicator())
//                     : ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: patientProvider.patients.length,
//                         itemBuilder: (ctx, index) {
//                           final data = patientProvider.patients[index];
//                           ListTile(
//                             leading: Icon(Icons.person),
//                             title: Text('Name: ${data.patient[index].name}'),
//                             subtitle:
//                                 Text('Address: ${data.patient[index].address}'),
//                             onTap: () {},
//                           );
//                         })),
//             // FutureBuilder<PatientModel?>(
//             //   future: patientData,
//             //   builder: (context, snapshot) {
//             //     if (snapshot.hasData) {
//             //       final patientModel = snapshot.data!;
//             //       return ListView.builder(
//             //         shrinkWrap: true,
//             //         itemCount: patientModel.patient.length,
//             //         itemBuilder: (context, index) {
//             //           final data1 = patientModel.patient[index];
//             //           return Card(
//             //             child: Column(
//             //               children: [
//             //                 Text(data1.name),
//             //                 Text(data1.address),
//             //                 Text(data1.phone),
//             //                 Text(data1.user),
//             //                 Text(data1.id.toString()),
//             //                 Text(data1.payment),
//             //                 Text(data1.discountAmount.toString()),
//             //               ],
//             //             ),
//             //           );
//             //         },
//             //       );
//             //     } else if (snapshot.hasError) {
//             //       return const Center(
//             //         child: Text('error'),
//             //       );
//             //     } else if (snapshot.connectionState ==
//             //         ConnectionState.waiting) {
//             //       return const LinearProgressIndicator();
//             //     } else {
//             //       throw Exception('failed to load patienst list');
//             //     }
//             //   },
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
// import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class PatientsPage extends StatefulWidget {
//   const PatientsPage({super.key});

//   @override
//   State<PatientsPage> createState() => _PatientsPageState();
// }

// class _PatientsPageState extends State<PatientsPage> {
//   @override
//   Widget build(BuildContext context) {
//     final patientProvider = Provider.of<PatientProvider>(context);
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     final token = authProvider.token;
//     return Scaffold(
//       body: FutureBuilder(
//         future: Provider.of<PatientProvider>(context).fetchData(token),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.error != null) {
//             return const Center(child: Text('An error occurred!'));
//           } else {
//             return ListView.builder(
//               itemCount: patientProvider.patients.length,
//               itemBuilder: (context, index) {
//                 final data = patientProvider.patients[index];
//                 return Card(
//                   child: Column(
//                     children: [
//                       Text(
//                         data.patient[index].name,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         data.patient[index].address,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         data.patient[index].payment,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         data.patient[index].phone,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         data.patient[index].user,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({super.key});

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  @override
  void initState() {
    super.initState();
    // final authProvider = Provider.of<AuthProvider>(context).token;
    PatientProvider().fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    final patientProvider = Provider.of<PatientProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: 'Search For Treatments',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0XFF000000)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: const Color(0XFF006837),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 5),
                      child: const Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort By :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                          hintText: 'Date',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0XFF000000)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              patientProvider.patients.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: patientProvider.patients.length,
                      itemBuilder: (ctx, index) {
                        final data = patientProvider.patients[index];
                        return ListTile(
                          leading: const Icon(Icons.person),
                          title: Text('Name: ${data.patient[index].name}'),
                          subtitle:
                              Text('Address: ${data.patient[index].address}'),
                          onTap: () {},
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
