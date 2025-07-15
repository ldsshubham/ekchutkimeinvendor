import 'package:ekchutkimeinvendor/constants/app_sizes.dart';
import 'package:ekchutkimeinvendor/features/onboarding/controllers/onboardingcontrollers.dart';
import 'package:ekchutkimeinvendor/features/onboarding/helpers/onboarding_list.dart';
import 'package:ekchutkimeinvendor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingControllers());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            /// ✅ PageView
            Expanded(
              flex: 6,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.changePage,
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  final data = onboardingData[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        data['img']!,
                        height: 250,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        data['title']!,
                        style: TextStyle(fontSize: AppSizes.fontXXL),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        data['desc']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: AppSizes.fontXL),
                      ),
                    ],
                  );
                },
              ),
            ),

            /// ✅ Dot Indicators
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: controller.currentPage.value == index ? 20 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: controller.currentPage.value == index
                          ? AppColors.primaryColor
                          : AppColors.gray,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              );
            }),

            const SizedBox(height: 32),

            /// ✅ Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Back
                Obx(
                  () => IconButton(
                    onPressed: controller.currentPage.value > 0
                        ? () {
                            controller.pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: controller.currentPage.value > 0
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),

                /// Skip / Get Started
                Obx(() {
                  final isLast =
                      controller.currentPage.value == onboardingData.length - 1;
                  return ElevatedButton(
                    onPressed: () {
                      if (isLast) {
                        Get.offNamed(AppRoutes.loginScreen);
                      } else {
                        controller.pageController.jumpToPage(
                          onboardingData.length - 1,
                        );
                      }
                    },
                    child: Text(isLast ? 'Get Started' : 'Skip'),
                  );
                }),

                /// Forward
                Obx(
                  () => IconButton(
                    onPressed:
                        controller.currentPage.value < onboardingData.length - 1
                        ? () {
                            controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    icon: const Icon(Icons.arrow_forward_ios),
                    color:
                        controller.currentPage.value < onboardingData.length - 1
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
