import 'package:flutter_security_workforce/app/modules/auth/signup_page/binding/signup_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/auth/signup_page/views/signup_page.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/bindings/on_boarding_get_started_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/bindings/on_boarding_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/views/on_boarding_get_started_page.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/views/on_boarding_page.dart';
import 'package:flutter_security_workforce/app/modules/splash_page/presentation/binding/slpash_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/splash_page/presentation/views/splash_page.dart';
import 'package:get/get.dart';
import '../modules/home_page/presentation/bindings/home_binding.dart';
import '../modules/home_page/presentation/views/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homeRoute,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: AppRoutes.splashRoute,
      page: () => SplashPage(),
      binding: SlpashPageBinding(),
    ),

    GetPage(
      name: AppRoutes.onBoardingGetStartedRoute,
      page: () => OnBoardingGetStartedPage(),
      binding: OnBoardingGetStartedPageBinding(),
    ),

    GetPage(
      name: AppRoutes.onBoardingRoute,
      page: () => OnBoardingPage(),
      binding: OnBoardingPageBinding(),
    ),

    GetPage(
      name: AppRoutes.signupRoute,
      page: () => SignupPage(),
      binding: SignupPageBinding(),
    ),
  ];
}
