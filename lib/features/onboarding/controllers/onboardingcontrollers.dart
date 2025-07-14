import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControllers extends GetxController {
  var currentPage = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(); // ✅ Initialize here
  }

  void changePage(int index) {
    currentPage.value = index;
  }

  @override
  void onClose() {
    pageController.dispose(); // ✅ Dispose when controller is destroyed
    super.onClose();
  }
}
