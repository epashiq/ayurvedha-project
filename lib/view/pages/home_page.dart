// import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
// import 'package:ayurvedha_project/controller/provider/patient_provider.dart';
// import 'package:ayurvedha_project/model/patient_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late Future<List<Patient>?> patientData;
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final authProvider = Provider.of<AuthProvider>(context);
//       Provider.of<PatientProvider>(context, listen: false)
//           .fetchData(authProvider.token);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     final patientProvider = Provider.of<PatientProvider>(context);
//     final token = authProvider.token;

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
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(
//                     height: 50,
//                     width: 250,
//                     child: TextFormField(
//                       decoration: const InputDecoration(
//                           prefixIcon: Icon(Icons.search),
//                           labelText: 'Search For Treatments',
//                           labelStyle: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w300,
//                               color: Color(0XFF000000)),
//                           border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20)))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter some text';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     color: const Color(0XFF006837),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           backgroundColor: Colors.transparent,
//                           shadowColor: Colors.transparent,
//                           elevation: 5),
//                       child: const Text(
//                         'Search',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Sort By :',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                   ),
//                   SizedBox(
//                     height: 50,
//                     width: 200,
//                     child: TextFormField(
//                       decoration: const InputDecoration(
//                           suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
//                           hintText: 'Date',
//                           labelStyle: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w300,
//                               color: Color(0XFF000000)),
//                           border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20)))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter some text';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               //  ListView.builder(
//               //         scrollDirection: Axis.vertical,
//               //         shrinkWrap: true,
//               //         itemCount: patientProvider.patients.length,
//               //         itemBuilder: (context, index) {
//               //           final data1 = patientProvider.patients[index];
//               //           return Card(
//               //             child: Column(
//               //               children: [
//               //                 Text(data1.name),
//               //                 Text(data1.address),
//               //                 Text(data1.phone),
//               //                 Text(data1.user),
//               //                 Text(data1.id.toString()),
//               //                 Text(data1.payment),
//               //               ],
//               //             ),
//               //           );
//               //         })

//               FutureBuilder(
//                 future: Provider.of<PatientProvider>(context).fetchData(token),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: patientProvider.patients.length,
//                       itemBuilder: (context, index) {
//                         final data1 = patientProvider.patients[index];
//                         return Card(
//                           child: Column(
//                             children: [
//                               Text(data1.name),
//                               Text(data1.address),
//                               Text(data1.phone),
//                               Text(data1.user),
//                               Text(data1.id.toString()),
//                               Text(data1.payment),
//                               Text(data1.discountAmount.toString()),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   } else if (snapshot.hasError) {
//                     return const Center(
//                       child: Text('error'),
//                     );
//                   } else if (snapshot.connectionState ==
//                       ConnectionState.waiting) {
//                     return const LinearProgressIndicator();
//                   } else {
//                     throw Exception('failed to load patienst list');
//                   }
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
