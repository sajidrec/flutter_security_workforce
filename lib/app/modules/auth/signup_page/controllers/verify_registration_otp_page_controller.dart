import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerifyRegistrationOtpPageController extends GetxController {
  final TextEditingController pinPutController = TextEditingController();

  @override
  void onClose() {
    pinPutController.dispose();
    super.onClose();
  }
}
