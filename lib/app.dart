import 'package:ekchutkimeinvendor/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Ek Chutki Mein - Vendor',
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
