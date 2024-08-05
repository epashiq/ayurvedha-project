// import 'dart:developer';

// import 'package:ayurvedha_project/controller/services/treatment_update_services.dart';
// import 'package:ayurvedha_project/model/treatments_model.dart';
// import 'package:flutter/widgets.dart';

// class UpdateTreatmentProvider with ChangeNotifier {
//   Future<void> editTreatment(
//       TreatmentsModel treatment, BuildContext context, String token) async {
//     final TreatmentUpdateService treatmentUpdateService =
//         TreatmentUpdateService();
//     try {
//       await treatmentUpdateService.updateTreatment(treatment, context, token);
//       notifyListeners();
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

import 'dart:developer';
import 'package:ayurvedha_project/controller/services/treatment_update_services.dart';
import 'package:ayurvedha_project/model/treatments_model.dart';
import 'package:flutter/widgets.dart';

class UpdateTreatmentProvider with ChangeNotifier {
  Future<void> editTreatment(
      TreatmentsModel treatment, BuildContext context, String token) async {
    final TreatmentUpdateService treatmentUpdateService = TreatmentUpdateService();
    try {
      await treatmentUpdateService.updateTreatment(treatment, context, token);
      notifyListeners();
    } catch (e) {
      log('Error editing treatment: $e');
    }
  }
}
