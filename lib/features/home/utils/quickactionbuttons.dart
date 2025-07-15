
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sizes.dart';
import '../../../constants/app_text_styles.dart';

class QuickActionsButtons extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final String message;
  const QuickActionsButtons({
    super.key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print(title);
        Get.snackbar(
          title,
          message,
          snackPosition: SnackPosition.TOP,
          colorText: textColor,
          backgroundColor: color,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: AppColors.gray.withAlpha(10), blurRadius: 2),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.bodyText.copyWith(
              fontSize: AppSizes.fontXL,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
