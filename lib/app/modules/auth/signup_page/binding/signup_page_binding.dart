import 'package:flutter_security_workforce/app/modules/auth/signup_page/controllers/signup_page_controller.dart';
import 'package:get/get.dart';

class SignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupPageController());
  }
}
