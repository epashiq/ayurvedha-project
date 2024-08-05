import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/controller/provider/update_branch_provider.dart';
import 'package:ayurvedha_project/model/branches_model.dart';

class BranchUpdatePage extends StatefulWidget {
  final Branch branch;

  const BranchUpdatePage({super.key, required this.branch});

  @override
  State<BranchUpdatePage> createState() => _BranchUpdatePageState();
}

class _BranchUpdatePageState extends State<BranchUpdatePage> {
  late String location;
  late String phone;
  late int patientsCount;
  late String mail;
  late String address;
  late bool isActive;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    location = widget.branch.location;
    phone = widget.branch.phone;
    patientsCount = widget.branch.patientsCount;
    mail = widget.branch.mail;
    address = widget.branch.address;
    isActive = widget.branch.isActive;
  }

  void submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final updatedBranch = Branch(
        id: widget.branch.id,
        name: widget.branch.name,
        patientsCount: patientsCount,
        location: location,
        phone: phone,
        mail: mail,
        address: address,
        gst: widget.branch.gst,
        isActive: widget.branch.isActive,
      );
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      final token = authProvider.token;
      try {
        await Provider.of<UpdateBranchProvider>(context, listen: false)
            .editBranch(updatedBranch, token, context);
        Navigator.pop(context);
      } catch (e) {
        log(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Branch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: location,
                decoration: const InputDecoration(labelText: 'Location'),
                onSaved: (value) {
                  location = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the location';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: phone,
                decoration: const InputDecoration(labelText: 'Phone'),
                onSaved: (value) {
                  phone = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: patientsCount.toString(),
                decoration: const InputDecoration(labelText: 'Patients Count'),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  patientsCount = int.parse(value!);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the patients count';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: mail,
                decoration: const InputDecoration(labelText: 'Email'),
                onSaved: (value) {
                  mail = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the email';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: address,
                decoration: const InputDecoration(labelText: 'Address'),
                onSaved: (value) {
                  address = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the address';
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
                child: const Text('Update Branch'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
