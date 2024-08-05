// import 'dart:developer';

// import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
// import 'package:ayurvedha_project/controller/provider/update_treatment_provider.dart';
// import 'package:ayurvedha_project/model/treatments_model.dart';
// import 'package:ayurvedha_project/view/pages/treatment_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class TreatmentUpdatePage extends StatefulWidget {
//   final TreatmentsModel treatment;
//   const TreatmentUpdatePage({super.key, required this.treatment});

//   @override
//   _TreatmentUpdatePageState createState() => _TreatmentUpdatePageState();
// }

// class _TreatmentUpdatePageState extends State<TreatmentUpdatePage> {
//   late String name;
//   late String duration;
//   late String price;
//   late bool isActive;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     name = widget.treatment.name;
//     duration = widget.treatment.duration;
//     price = widget.treatment.price;
//     isActive = widget.treatment.isActive;
//   }

//   void submitForm() async {
//     if (!_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       final updatedTreatment = TreatmentsModel(
//           id: widget.treatment.id,
//           branches: widget.treatment.branches,
//           name: name,
//           duration: duration,
//           price: price,
//           isActive: isActive,
//           createdAt: widget.treatment.createdAt,
//           updatedAt: DateTime.now());
//       final authProvider = Provider.of<AuthProvider>(context, listen: false);
//       final token = authProvider.token;
//       try {
//         await Provider.of<UpdateTreatmentProvider>(context, listen: false)
//             .editTreatment(updatedTreatment, context, token);
//       } catch (e) {
//         print('error$e');
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Update Treatment'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 initialValue: name,
//                 decoration: const InputDecoration(labelText: 'Name'),
//                 onSaved: (value) {
//                   name = value!;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the treatment name';
//                   }
//                   return null;
//                 },
//               ),
//               // TextFormField(
//               //   decoration: const InputDecoration(labelText: 'ID'),
//               //   keyboardType: TextInputType.number,
//               //   onSaved: (value) {

//               //   },
//               //   validator: (value) {
//               //     if (value == null || value.isEmpty) {
//               //       return 'Please enter the patient ID';
//               //     }
//               //     return null;
//               //   },
//               // ),
//               TextFormField(
//                 initialValue: duration,
//                 decoration: const InputDecoration(labelText: 'duration'),
//                 onSaved: (value) {
//                   duration = value!;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the date';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 initialValue: price,
//                 decoration: const InputDecoration(labelText: 'price'),
//                 onSaved: (value) {
//                   price = value!;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the details';
//                   }
//                   return null;
//                 },
//               ),
//               SwitchListTile(
//                 title: const Text('Is Active'),
//                 value: isActive,
//                 onChanged: (value) {
//                   setState(() {
//                     isActive = value;
//                   });
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   submitForm();
//                   // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                   //     content: Text('update treatment successfully')));
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const TreatmentPages(),
//                       ));
//                 },
//                 child: const Text('Update Treatment'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';
import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/controller/provider/update_treatment_provider.dart';
import 'package:ayurvedha_project/model/treatments_model.dart';
import 'package:ayurvedha_project/view/pages/treatment_pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TreatmentUpdatePage extends StatefulWidget {
  final TreatmentsModel treatment;
  const TreatmentUpdatePage({super.key, required this.treatment});

  @override
  _TreatmentUpdatePageState createState() => _TreatmentUpdatePageState();
}

class _TreatmentUpdatePageState extends State<TreatmentUpdatePage> {
  late String name;
  late String duration;
  late String price;
  late bool isActive;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    name = widget.treatment.name;
    duration = widget.treatment.duration;
    price = widget.treatment.price;
    isActive = widget.treatment.isActive;
  }

  void submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final updatedTreatment = TreatmentsModel(
        id: widget.treatment.id,
        branches: widget.treatment.branches,
        name: name,
        duration: duration,
        price: price,
        isActive: isActive,
        createdAt: widget.treatment.createdAt,
        updatedAt: DateTime.now(),
      );
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      final token = authProvider.token;
      try {
        await Provider.of<UpdateTreatmentProvider>(context, listen: false)
            .editTreatment(updatedTreatment, context, token);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TreatmentPages(),
          ),
        );
      } catch (e) {
        log('Error submitting form: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Treatment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: name,
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (value) {
                  name = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the treatment name';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: duration,
                decoration: const InputDecoration(labelText: 'Duration'),
                onSaved: (value) {
                  duration = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the duration';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: price,
                decoration: const InputDecoration(labelText: 'Price'),
                onSaved: (value) {
                  price = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the price';
                  }
                  return null;
                },
              ),
              SwitchListTile(
                title: const Text('Is Active'),
                value: isActive,
                onChanged: (value) {
                  setState(() {
                    isActive = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: submitForm,
                child: const Text('Update Treatment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
