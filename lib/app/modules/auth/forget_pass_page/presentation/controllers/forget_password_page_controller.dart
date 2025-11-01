import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetPasswordPageController extends GetxController {
  final TextEditingController emailTec = TextEditingController();

  @override
  void onClose() {
    emailTec.dispose();
    super.onClose();
  }
}
