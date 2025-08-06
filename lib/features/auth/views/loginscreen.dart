// ignore_for_file: avoid_print

import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:ekchutkimeinvendor/features/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Loginscreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  Loginscreen({super.key});

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
                'Welcome Back! Login',
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: AppSizes.fontXL,
                ),
              ),

              SizedBox(height: 16),

              TextField(
                controller: loginController.mobileController,
                decoration: InputDecoration(
                  labelText: 'Phone(OTP)',
                  prefixIcon: Icon(Iconsax.call),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Button pressed");
                    if (loginController.mobileController.text.isEmpty) {
                      Get.snackbar(
                        "Error",
                        "Please enter your phone number",
                        snackPosition: SnackPosition.TOP,
                      );
                      return;
                    }
                    loginController.requestOtp();
                  },
                  child: Text('Next'),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
