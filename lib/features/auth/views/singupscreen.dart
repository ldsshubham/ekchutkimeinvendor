import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../routes/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool obsText = true;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New here! Create Account',
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: AppSizes.fontXL,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Iconsax.message),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  prefixIcon: Icon(Iconsax.call),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: obsText,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Iconsax.lock),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.eye),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                   Get.toNamed(AppRoutes.otpScreen);
                }, child: Text("Next")),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.loginScreen);
                  },
                  child: Text("Already have an account? Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
