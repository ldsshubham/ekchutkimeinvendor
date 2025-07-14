import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_font_weight.dart';
import '../constants/app_sizes.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'GTEesti',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryColor,
    // Appbar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),
    // Text theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: AppSizes.fontXXL,
        fontWeight: AppFontWeight.bold,
        color: AppColors.primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: AppSizes.fontM,
        fontWeight: AppFontWeight.regular,
        color: AppColors.primaryColor,
      ),
      bodySmall: TextStyle(
        fontSize: AppSizes.fontS,
        color: AppColors.primaryColor,
      ),
    ),
    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(fontWeight: AppFontWeight.semiBold, fontFamily: 'GTEesti'),
      ),
    ),
    // Oulined Button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(fontWeight: AppFontWeight.semiBold, fontFamily: 'GTEesti'),
        side: BorderSide(color: AppColors.primaryColor, ),
        
      ),
    ),

    // Text Button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        overlayColor: AppColors.secondaryColor,
        foregroundColor: AppColors.primaryColor,
        textStyle: TextStyle(fontWeight: AppFontWeight.semiBold, color: AppColors.primaryColor, fontFamily: 'GTEesti')
      )
    ),

    // Inputfield decoration theme
    inputDecorationTheme: InputDecorationTheme(
  isDense: true, // ✅ use this instead of isCollapsed
  filled: true,
  fillColor: AppColors.white,
  iconColor: AppColors.primaryColor,

  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // ✅ tweak vertical
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: AppColors.primaryColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: AppColors.primaryColor),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: AppColors.error),
  ),
  hintStyle: TextStyle(color: AppColors.primaryColor),
  errorStyle: TextStyle(color: AppColors.error),
  labelStyle: TextStyle(color: AppColors.gray),
),
    // Card Theme
    cardTheme: CardThemeData(
      shadowColor: AppColors.gray,
      color: AppColors.white,
      elevation: 2,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.antiAlias
    ),

    // BottomNavigation Bar theme 

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,elevation: 4,
      unselectedItemColor: AppColors.gray,
      selectedItemColor: AppColors.primaryColor,
      type: BottomNavigationBarType.fixed
    )
  );
}
