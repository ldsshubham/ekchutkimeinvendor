import 'package:ekchutkimeinvendor/features/home/views/mainhome.dart';
import 'package:ekchutkimeinvendor/features/onboarding/views/onboardingscreen.dart';
import 'package:ekchutkimeinvendor/features/splashscreen/views/splashscreen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboardingScreen';
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';

  static final routes = [
    GetPage(name: splashScreen, page:()=>Splashscreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: homeScreen, page: () => MainScreen()),
  ];
}
