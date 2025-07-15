import 'package:ekchutkimeinvendor/features/home/views/mainhome.dart';
import 'package:ekchutkimeinvendor/features/onboarding/views/onboardingscreen.dart';
import 'package:ekchutkimeinvendor/features/splashscreen/views/splashscreen.dart';
import 'package:get/get.dart';

import '../features/auth/views/loginscreen.dart';
import '../features/auth/views/otpscreen.dart';
import '../features/auth/views/singupscreen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboardingScreen';
  static const String loginScreen="/loginScreen";
  static const String signupScreen="/signupScreen";
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';
  static const String otpScreen = "/otpScreen";
  static final routes = [
    GetPage(name: otpScreen, page :()=>OtpScreen()),
    GetPage(name: loginScreen, page:()=>Loginscreen()),
    GetPage(name: signupScreen, page:()=>SignupScreen()),
    GetPage(name: splashScreen, page:()=>Splashscreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: homeScreen, page: () => MainScreen()),
  ];
}
