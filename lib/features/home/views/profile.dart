import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_sizes.dart';
import '../../../constants/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                // image: DecorationImage(image: AssetImage(AppString.graph), fit: BoxFit.cover),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Profile',
                      style: AppTextStyles.bodyText.copyWith(
                        fontSize: AppSizes.fontXL,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .010),
                    CircleAvatar(
                      radius: 75,
                      // foregroundImage: IconButton(onPressed: onPressed, icon: icon),
                      backgroundImage: AssetImage('assets/images/mainlogo.jpg'),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      'User Name',
                      style: AppTextStyles.bodyText.copyWith(
                        fontSize: AppSizes.fontL,
                        color: AppColors.white,
                      ),
                    ),
                    // Text(
                    //   '+91 9876543210',
                    //   style: AppTextStyles.caption.copyWith(
                    //     fontSize: AppSizes.fontM,
                    //     color: AppColors.green,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            // List tile screens
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account Overview',
                      style: AppTextStyles.bodyText.copyWith(
                        fontSize: AppSizes.fontL,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.success.withAlpha(125),
                        ),
                        child: Icon(Iconsax.user, color: AppColors.green),
                      ),
                      title: Text('Profile'),
                      trailing: Icon(Iconsax.arrow_right_3),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.error.withAlpha(75),
                        ),
                        child: Icon(Iconsax.box, color: AppColors.error),
                      ),
                      title: Text('My Orders'),
                      trailing: Icon(Iconsax.arrow_right_3),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.gray.withAlpha(90),
                        ),
                        child: Icon(
                          Iconsax.coin,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      title: Text('Leads'),
                      trailing: Icon(Iconsax.arrow_right_3),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.withAlpha(75),
                        ),
                        child: Icon(Iconsax.lock, color: Colors.blue[900]),
                      ),
                      title: Text('Change Password'),
                      trailing: Icon(Iconsax.arrow_right_3),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.yellow.withAlpha(50),
                        ),
                        child: Icon(Iconsax.language_circle),
                      ),
                      title: Text('Change lanaguage'),
                      trailing: Icon(Iconsax.arrow_right_3),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
