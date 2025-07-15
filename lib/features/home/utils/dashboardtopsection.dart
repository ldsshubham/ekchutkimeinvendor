
import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/features/home/utils/dashboardcards.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardTopSection extends StatelessWidget {
  const DashboardTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:Column(
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
          data: '4Cr',
          color: AppColors.error.withAlpha(100),
          icon: Icon(Iconsax.shop, color: AppColors.error,),
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
          icon: Icon(Iconsax.call, color: Colors.blue,),
        ),
        DashboardCards(
          title: 'Products',
          data: '45',
          color: Colors.deepOrange.withAlpha(100),
          icon: Icon(Iconsax.box, color: Colors.deepOrange,),
        ),
        
      ],
    ),
        ],
      ),
    );
  }
}

