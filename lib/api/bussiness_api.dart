import 'dart:convert';

import 'package:ekchutkimeinvendor/constants/strings.dart';
import 'package:ekchutkimeinvendor/features/home/models/bussiness_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../constants/app_colors.dart';

class BussinessApi {
  static Future<Map<String, dynamic>> getBusiness() async {
    final token = GetStorage().read('accessToken');
    if (token == null) {
      return Future.error("No access token found");
    }

    final uri = Uri.parse("${AppString.baseUrl}business");
    try {
      final response = await http.get(
        uri,
        headers: {
          "Authorization": "Bearer $token",
          'Content-Type': 'application/json',
        },
      );
      final decoded = jsonDecode(response.body);
      print(decoded);
      return {
        'statusCode': response.statusCode,
        'status': decoded['status'] as String,
        'data': decoded['data'] != null ? decoded['data']['business'] : null,
        'message': decoded['message'] as String,
      };
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to fetch business data: $e",
        backgroundColor: AppColors.error,
        colorText: AppColors.white,
      );
      throw Exception("Unexpected error occurred in getBusiness");
    }
  }

  static Future<Map<String, dynamic>> registerBussiness(
    BussinessModel model,
  ) async {
    final token = GetStorage().read('accessToken');
    if (token == null) {
      return Future.error("No access token found");
    }

    final uri = Uri.parse("${AppString.baseUrl}business/register");
    try {
      final response = await http.post(
        uri,
        headers: {
          "Authorization": "Bearer $token",
          'Content-Type': 'application/json',
        },
        body: jsonEncode(model.toJson()),
      );
      final decoded = jsonDecode(response.body);
      return {
        'statusCode': response.statusCode,
        'status': decoded['status'] as String,
        'data': decoded['data'] != null ? decoded['data']['business'] : null,
        'message': decoded['message'] as String,
      };
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to register business: $e",
        backgroundColor: AppColors.error,
        colorText: AppColors.white,
      );
      throw Exception("Unexpected error occurred in registerBussiness");
    }
  }
}
