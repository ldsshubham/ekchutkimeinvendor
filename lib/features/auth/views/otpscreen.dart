import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:ekchutkimeinvendor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              TextField(decoration: InputDecoration(labelText: "Enter OTP"),),
              SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Get.toNamed(AppRoutes.homeScreen);
                }, child: Text("Login")),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.signupScreen);
                  },
                  child: Text("Don't have an account? Create Account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
