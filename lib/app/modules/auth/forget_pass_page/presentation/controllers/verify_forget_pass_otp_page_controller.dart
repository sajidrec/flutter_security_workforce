import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyForgetPassOtpPageController extends GetxController {
  final TextEditingController pinPutController = TextEditingController();

  @override
  void onClose() {
    pinPutController.dispose();
    super.onClose();
  }
}
