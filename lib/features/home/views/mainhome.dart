import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/features/business/controller/business_controller.dart';
import 'package:ekchutkimeinvendor/features/business/views/reg_business.dart';
import 'package:ekchutkimeinvendor/features/business/views/waiting_screen.dart';
import 'package:ekchutkimeinvendor/features/home/views/complete_admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MainScreen extends StatelessWidget {
  final GetBusinessController businessController = Get.put(
    GetBusinessController(),
  );
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => businessController.isLoading.value
          ? Scaffold(
              body: Center(
                child: LoadingAnimationWidget.progressiveDots(
                  color: AppColors.primaryColor,
                  size: 50,
                ),
              ),
            )
          : businessController.isBusinessRegistered.value &&
                !businessController.isBusinessApproved.value
          ? WaitingScreen()
          : businessController.isBusinessRegistered.value &&
                businessController.isBusinessApproved.value
          ? CompleteAdminPanel()
          : !businessController.isBusinessRegistered.value
          ? BusinessRegistrationScreen()
          : Scaffold(
              body: Center(
                child: Text(
                  'Something went wrong',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            ),
    );
  }
}
