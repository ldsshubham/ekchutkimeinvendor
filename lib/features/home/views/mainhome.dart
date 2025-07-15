import 'package:ekchutkimeinvendor/features/home/controllers/bottomnavcontroller.dart';
import 'package:ekchutkimeinvendor/features/home/controllers/mydrawercontroller.dart';
import 'package:ekchutkimeinvendor/features/home/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends GetView<MyDrawerController> {
  @override
  final controller = Get.put(MyDrawerController());
  final BottomNavController navController = Get.put(BottomNavController());

  MainScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: controller.scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: controller.openDrawer,
            icon: Icon(Iconsax.menu),
          ),
        ),
        drawer: Drawer(),
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
            BottomNavigationBarItem(icon: Icon(Iconsax.activity), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
