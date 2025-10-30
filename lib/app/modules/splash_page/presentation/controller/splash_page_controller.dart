import 'package:flutter_security_workforce/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _moveToNextPage();
  }

  Future<void> _moveToNextPage() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed(AppRoutes.onBoardingGetStartedRoute);
  }
}
