import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordPageController extends GetxController {
  final TextEditingController passwordTec = TextEditingController();
  final TextEditingController confirmPasswordTec = TextEditingController();

  bool obscurePass = true;
  bool obscureConfirmPass = true;

  void toggleObscurePass() {
    obscurePass = !obscurePass;
    update();
  }

  void toggleObscureConfirmPass() {
    obscureConfirmPass = !obscureConfirmPass;
    update();
  }

  @override
  void onClose() {
    passwordTec.dispose();
    confirmPasswordTec.dispose();
    super.onClose();
  }
}
