import 'package:ayurvedha_project/controller/provider/auth_provider.dart';
import 'package:ayurvedha_project/controller/provider/treatment_provider.dart';
import 'package:ayurvedha_project/view/pages/treatment_update_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TreatmentPages extends StatefulWidget {
  const TreatmentPages({super.key});

  @override
  State<TreatmentPages> createState() => _TreatmentPagesState();
}

class _TreatmentPagesState extends State<TreatmentPages> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final token = authProvider.token;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treatments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: Provider.of<TreatmentProvider>(context, listen: false)
              .fetchTreatment(token),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: const CircularProgressIndicator());
            } else if (snapshot.error != null) {
              return const Center(child: Text('An error occurred!'));
            } else {
              return Consumer<TreatmentProvider>(
                builder: (ctx, treatmentProvider, child) => ListView.builder(
                  itemCount: treatmentProvider.treatment.length,
                  itemBuilder: (ctx, index) {
                    final treatment = treatmentProvider.treatment[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              treatment.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // Text('id: ${treatment.id}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('duration: ${treatment.duration}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('price: ${treatment.price}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Isactive: ${treatment.isActive}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                TreatmentUpdatePage(
                                              treatment: treatment,
                                            ),
                                          ));
                                    },
                                    icon: const Icon(Icons.edit)))
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
