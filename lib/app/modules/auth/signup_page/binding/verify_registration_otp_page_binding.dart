import 'package:flutter_security_workforce/app/modules/auth/signup_page/controllers/verify_registration_otp_page_controller.dart';
import 'package:get/get.dart';

class VerifyRegistrationOtpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyRegistrationOtpPageController());
  }
}
