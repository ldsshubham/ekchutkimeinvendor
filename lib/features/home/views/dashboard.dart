import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../utils/dashboardtopsection.dart';
import '../utils/quickactionbuttons.dart';

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
              DashboardTopSection(),
              SizedBox(height: 8),
              Text(
                'Quick Actions',
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: AppSizes.fontXL,
                ),
              ),
              SizedBox(height: 10),
              QuickActionsButtons(
                title: 'View Upcoming Orders',
                color: AppColors.green,
                textColor: AppColors.white,
                message: 'No orders to show yet',
              ),
              SizedBox(height: 10),
              QuickActionsButtons(
                title: 'Manage Products',
                color: AppColors.error.withAlpha(100),
                textColor: AppColors.white,
                message: 'Product Feature Will Be Added Soon',
              ),
              SizedBox(height: 10),
              QuickActionsButtons(
                title: 'View Analytics',
                color: AppColors.secondaryColor.withAlpha(150),
                textColor: AppColors.white,
                message: 'Analytics Feature Will Be Added Soon',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
