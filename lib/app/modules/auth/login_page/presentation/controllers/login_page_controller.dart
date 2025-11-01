import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final TextEditingController emailTEC = TextEditingController();
  final TextEditingController passwordTEC = TextEditingController();

  bool obscurePass = true;
  bool rememberMe = false;

  void toggleRememberMe() {
    rememberMe = !rememberMe;
    update();
  }

  void toggleObscurePass() {
    obscurePass = !obscurePass;
    update();
  }

  @override
  void onClose() {
    emailTEC.dispose();
    passwordTEC.dispose();

    super.onClose();
  }
}
