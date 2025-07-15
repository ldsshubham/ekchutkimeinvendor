import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:ekchutkimeinvendor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                'Welcome Back! Login',
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
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forget Password', style: TextStyle(color: Colors.deepPurple),),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Get.toNamed(AppRoutes.otpScreen);
                }, child: Text("Next")),
              ),
              SizedBox(height: 10),
              Text('- OR -'),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone(OTP)', prefixIcon: Icon(Iconsax.call)
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.toNamed(AppRoutes.otpScreen);
                }, child: Text('Login With OTP')),
              ),
              SizedBox(height: 10,),
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
