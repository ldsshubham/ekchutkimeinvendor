// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:ekchutkimeinvendor/constants/strings.dart';
import 'package:http/http.dart' as http;

class OtpApiServices {
  static Future<String> requestOtp(String mobileNumber) async {
    final uri = Uri.parse("${AppString.baseUrl}auth/request-otp");
    try {
      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"phone": mobileNumber}),
      );
      print(response.body);
      final Map<String, dynamic> res = jsonDecode(response.body);
      if (response.statusCode == 200 || res["status"] == 'success') {
        final res = jsonDecode(response.body);
        return res['data']['otp'] as String;
      } else {
        throw Exception("Failed to request OTP: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      throw Exception("Failed to request OTP: $e");
    }
  }

  static Future<String> verifyOtp(String number, String otp) async {
    final uri = Uri.parse("${AppString.baseUrl}auth/verify-otp");
    try {
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"phone": number, "otp": otp}),
      );
      print(response.body);
      final Map<String, dynamic> res = jsonDecode(response.body);
      if (response.statusCode == 200 || res["status"] == 'success') {
        final res = jsonDecode(response.body);
        return res['data']['accessToken']
            as String; // Assuming the token is returned in 'data' field
      } else {
        throw Exception("Failed to verify OTP: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      throw Exception("Failed to verify OTP: $e");
    }
  }
}
