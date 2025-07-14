
import 'package:ekchutkimeinvendor/constants/strings.dart';
import 'package:ekchutkimeinvendor/features/splashscreen/controllers/splashcontrollers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Splashscreen extends GetView<SplashController>{

@override
final controller = Get.put(SplashController());

Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Center(
        child: Image.asset(AppString.logo, height: 150,),
      )),
    );
  }
}