import 'package:flutter_security_workforce/app/modules/auth/forget_pass_page/presentation/binding/forget_password_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/auth/forget_pass_page/presentation/binding/verify_forget_pass_otp_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/auth/forget_pass_page/presentation/views/forget_password_page.dart';
import 'package:flutter_security_workforce/app/modules/auth/forget_pass_page/presentation/views/verify_forget_pass_otp_page.dart';
import 'package:flutter_security_workforce/app/modules/auth/login_page/presentation/binding/login_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/auth/login_page/presentation/views/login_page.dart';
import 'package:flutter_security_workforce/app/modules/auth/new_password_page/presentation/binding/new_password_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/auth/new_password_page/presentation/views/new_password_page.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/bindings/on_boarding_get_started_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/bindings/on_boarding_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/views/on_boarding_get_started_page.dart';
import 'package:flutter_security_workforce/app/modules/on_boarding_page/presentation/views/on_boarding_page.dart';
import 'package:flutter_security_workforce/app/modules/splash_page/presentation/binding/slpash_page_binding.dart';
import 'package:flutter_security_workforce/app/modules/splash_page/presentation/views/splash_page.dart';
import 'package:get/get.dart';
import '../modules/auth/signup_page/presentation/binding/signup_page_binding.dart';
import '../modules/auth/signup_page/presentation/binding/verify_registration_otp_page_binding.dart';
import '../modules/auth/signup_page/presentation/views/signup_page.dart';
import '../modules/auth/signup_page/presentation/views/verify_registration_otp_page.dart';
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

    GetPage(
      name: AppRoutes.verifyRegistrationOtpRoute,
      page: () => VerifyRegistrationOtpPage(),
      binding: VerifyRegistrationOtpPageBinding(),
    ),

    GetPage(
      name: AppRoutes.loginRoute,
      page: () => LoginPage(),
      binding: LoginPageBinding(),
    ),

    GetPage(
      name: AppRoutes.forgetPassRoute,
      page: () => ForgetPasswordPage(),
      binding: ForgetPasswordPageBinding(),
    ),

    GetPage(
      name: AppRoutes.verifyForgetPassRoute,
      page: () => VerifyForgetPassOtpPage(),
      binding: VerifyForgetPassOtpPageBinding(),
    ),

    GetPage(
      name: AppRoutes.newPassRoute,
      page: () => NewPasswordPage(),
      binding: NewPasswordPageBinding(),
    ),
  ];
}
