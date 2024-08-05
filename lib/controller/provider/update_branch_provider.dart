import 'dart:developer';

import 'package:ayurvedha_project/controller/services/branch_update_services.dart';
import 'package:ayurvedha_project/model/branches_model.dart';
import 'package:flutter/widgets.dart';

class UpdateBranchProvider with ChangeNotifier {
  Future<void> editBranch(
      Branch branch, String token, BuildContext context) async {
    final BranchUpdateServices branchUpdateServices = BranchUpdateServices();
    try {
      await branchUpdateServices.updateBranches(branch, token, context);
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }
}
