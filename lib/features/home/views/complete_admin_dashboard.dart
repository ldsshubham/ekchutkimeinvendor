import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/features/auth/controllers/login_controller.dart';
import 'package:ekchutkimeinvendor/features/business/controller/business_controller.dart';
import 'package:ekchutkimeinvendor/features/home/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/bottomnavcontroller.dart';
import '../controllers/mydrawercontroller.dart';

class CompleteAdminPanel extends StatelessWidget {
  final controller = Get.put(MyDrawerController());
  final LoginController logOutController = Get.put(LoginController());
  final BottomNavController navController = Get.put(BottomNavController());
  CompleteAdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: controller.openDrawer,
          icon: Icon(Iconsax.menu),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.secondaryColor),
              child: Center(
                child: Text(
                  'Admin Panel',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Iconsax.home),
              title: Text('Dashboard'),
              onTap: () {
                navController.changePage(0);
                controller.closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(Iconsax.box),
              title: Text('Product'),
              onTap: () {
                navController.changePage(1);
                controller.closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(Iconsax.activity),
              title: Text('Orders'),
              onTap: () {
                navController.changePage(2);
                controller.closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(Iconsax.user),
              title: Text('Profile'),
              onTap: () {
                navController.changePage(3);
                controller.closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(Iconsax.logout),
              title: Text('Logout'),
              onTap: () {
                logOutController.logOutUser();
                controller.closeDrawer();
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: navController.currentPage.value,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.currentPage.value,
        onTap: navController.changePage,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Iconsax.box), label: 'Product'),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.activity),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
