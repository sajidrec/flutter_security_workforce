import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailTec = TextEditingController();
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
    emailTec.dispose();
    passwordTec.dispose();
    confirmPasswordTec.dispose();
    super.onClose();
  }
}
