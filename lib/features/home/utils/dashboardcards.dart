import 'package:ekchutkimeinvendor/constants/app_colors.dart';
import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_text_styles.dart';

class DashboardCards extends StatelessWidget {
  final String title;
  final String data;
  final Color color;
  final Icon icon;
  const DashboardCards({
    super.key,
    required this.title,
    required this.data,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,

        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.gray.withAlpha(100),
            blurRadius: 2,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon,
          ),

          Text(
            title,
            style: AppTextStyles.bodyText.copyWith(fontSize: AppSizes.fontL),
          ),
          Text(
            data,
            style: AppTextStyles.bodyText.copyWith(fontSize: AppSizes.fontXXL),
          ),
        ],
      ),
    );
  }
}
