import 'package:ekchutkimeinvendor/features/home/utils/dashboardcards.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/app_colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardCards(
                    title: 'Total Orders',
                    data: '100',
                    color: AppColors.green.withAlpha(100),
                    icon: Icon(Iconsax.graph, color: AppColors.green,),
                  ),
                  DashboardCards(
                    title: 'Total Sales',
                    data: '4749Cr',
                    color: AppColors.error.withAlpha(100),
                    icon: Icon(Iconsax.graph, color: AppColors.error,),
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardCards(
                    title: 'Total Leads',
                    data: '989',
                    color: Colors.blue.withAlpha(100),
                    icon: Icon(Iconsax.graph, color: Colors.blue,),
                  ),
                  DashboardCards(
                    title: 'Products',
                    data: '45',
                    color: Colors.deepOrange.withAlpha(100),
                    icon: Icon(Iconsax.graph, color: Colors.deepOrange,),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

