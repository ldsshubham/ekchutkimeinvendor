import 'package:ekchutkimeinvendor/features/home/models/bussiness_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../api/bussiness_api.dart';

class RegisterBusinessController extends GetxController {
  final businessController = TextEditingController();
  final address1Controller = TextEditingController();
  final address2Controller = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final zipController = TextEditingController();
  final isLoading = false.obs;

  void registerBusiness() async {
    if (businessController.text.isEmpty ||
        address1Controller.text.isEmpty ||
        address2Controller.text.isEmpty ||
        cityController.text.isEmpty ||
        stateController.text.isEmpty ||
        countryController.text.isEmpty ||
        zipController.text.isEmpty) {
      Get.snackbar("Error", "Please fill all fields");
      return;
    }
    isLoading.value = true;

    final model = BussinessModel(
      name: businessController.text,
      addressLine1: address1Controller.text,
      addressLine2: address2Controller.text,
      city: cityController.text,
      state: stateController.text,
      pinCode: zipController.text,
      country: countryController.text,
    );

    try {
      isLoading.value = true;
      final result = await BussinessApi.registerBussiness(model);
      if (result['statusCode'] == 200) {
        Get.snackbar("Success", "Business registered successfully");
        Get.offAllNamed('/home'); // Navigate to home screen
      } else {
        Get.snackbar("Error", result['message'] ?? "Registration failed");
      }
    } catch (e) {
      Get.snackbar("Error", "An unexpected error occurred: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
