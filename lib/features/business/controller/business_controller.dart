// ignore_for_file: avoid_print

import 'package:ekchutkimeinvendor/api/bussiness_api.dart';
import 'package:ekchutkimeinvendor/features/business/views/waiting_screen.dart';
import 'package:ekchutkimeinvendor/features/home/models/bussiness_model.dart';
import 'package:ekchutkimeinvendor/routes/routes.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';

class GetBusinessController extends GetxController {
  var isLoading = false.obs;
  var businessData = Rxn<BussinessModel>();
  var errorMessage = ''.obs;
  var isBusinessRegistered = false.obs;
  var isBusinessApproved = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true; // Start loading when the controller is initialized
    getBussinessDetails(); // Fetch business details on initialization
    print("BusinessController initialized");
  }

  Future<List<BussinessModel>> getBussinessDetails() async {
    try {
      print("requesting for business data");
      final result = await BussinessApi.getBusiness();
      if (result['statusCode'] == 203) {
        isBusinessRegistered.value = true;
        Get.snackbar(
          "Pending For Approval",
          "Please wait for admin approval",
          backgroundColor: AppColors.warning,
          colorText: AppColors.primaryColor,
        );
        print(result);
        Get.to(WaitingScreen());
      } else if (result['statusCode'] == 404) {
        isBusinessRegistered.value = false;
        Get.snackbar(
          "Business Not Found",
          "Please register your business first",
          backgroundColor: AppColors.error,
          colorText: AppColors.white,
        );
        Get.offAllNamed(AppRoutes.regBusiness);
      } else if (result['statusCode'] == 200) {
        isBusinessRegistered.value = true;
        isBusinessApproved.value = true;
        businessData.value = BussinessModel.fromJson(
          result['data']['business'],
        );
        print("Business data fetched successfully: ${businessData.value}");
        Get.offAllNamed(AppRoutes.homeScreen);
      } else {
        errorMessage.value =
            result['message'] ??
            "Unexpected status code: $result['statusCode']";

        Get.snackbar(
          "Error",
          errorMessage.value,
          backgroundColor: AppColors.error,
          colorText: AppColors.white,
        );
      }
    } catch (e) {
      print("Error fetching business details: $e");
      errorMessage.value = "Failed to fetch business details";
    } finally {
      isLoading.value = false;
    }
    return businessData.value != null ? [businessData.value!] : [];
  }
}
