// ignore_for_file: prefer_const_constructors

import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/controller/provider/branch_provider.dart';
import 'package:ayurvedha_project/view/pages/branch_update_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BranchScreen extends StatelessWidget {
  static const routeName = '/branches';

  const BranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final token = authProvider.token;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          future: Provider.of<BranchProvider>(context, listen: false)
              .fetchBranches(token),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: const CircularProgressIndicator());
            } else if (snapshot.error != null) {
              return const Center(child: Text('An error occurred!'));
            } else {
              return Consumer<BranchProvider>(
                builder: (ctx, branchProvider, child) => ListView.builder(
                  itemCount: branchProvider.branches.length,
                  itemBuilder: (ctx, index) {
                    final branch = branchProvider.branches[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              branch.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Location: ${branch.location}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('phone: ${branch.phone}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('patient_count: ${branch.patientsCount}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Mail: ${branch.mail}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Address: ${branch.address}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Gst: ${branch.gst}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Isactive: ${branch.isActive}'),
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BranchUpdatePage(branch: branch,),
                                          ));
                                    },
                                    icon: Icon(Icons.edit)))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
