import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:ekchutkimeinvendor/features/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter the OTP',
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: AppSizes.fontXL,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.otpController,
                decoration: InputDecoration(labelText: "Enter OTP"),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (controller.otpController.text.isEmpty) {
                      Get.snackbar(
                        "Error",
                        "Please enter the OTP",
                        backgroundColor: AppColors.error,
                        colorText: AppColors.white,
                        snackPosition: SnackPosition.TOP,
                      );
                      return;
                    }
                    print("OTP entered: ${controller.otpController.text}");
                    controller.verifyOtpAndSaveOtp(
                      controller.otpController.text,
                    );
                  },
                  child: Text("Next"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    controller.requestOtp();
                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
