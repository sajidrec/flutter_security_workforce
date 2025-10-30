import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_security_workforce/app/core/constants/app_assets.dart';
import 'package:flutter_security_workforce/app/modules/auth/signup_page/controllers/signup_page_controller.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppAssets.securiverseIcon)),
                SizedBox(height: 56.h),

                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "Create ",
                        style: TextStyle(color: AppColors.secondaryNavyBlue),
                      ),
                      TextSpan(
                        text: "your Account",
                        style: TextStyle(color: AppColors.primaryOrange),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 48.h),

                GetBuilder<SignupPageController>(
                  builder: (controller) {
                    return Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildEmailInput(controller),
                          SizedBox(height: 16.h),
                          _buildPasswordInput(controller),
                          SizedBox(height: 16.h),
                          _buildConfirmPasswordInput(controller),
                          SizedBox(height: 32.h),
                          _buildSignupButton(),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? "),
                              Text(
                                "Sign in",
                                style: TextStyle(
                                  color: AppColors.primaryOrange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildSignupButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryNavyBlue,
          foregroundColor: AppColors.primaryWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Column _buildConfirmPasswordInput(SignupPageController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: TextStyle(fontSize: 16.sp, color: AppColors.primaryBlack),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller.confirmPasswordTec,
          obscureText: controller.obscureConfirmPass,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                controller.toggleObscureConfirmPass();
              },
              icon: Icon(
                controller.obscureConfirmPass
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            hintText: "Re-type your password",
            hintStyle: TextStyle(color: AppColors.primaryGray),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildPasswordInput(SignupPageController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(fontSize: 16.sp, color: AppColors.primaryBlack),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller.passwordTec,
          obscureText: controller.obscurePass,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                controller.toggleObscurePass();
              },
              icon: Icon(
                controller.obscurePass
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            hintText: "Enter your password",
            hintStyle: TextStyle(color: AppColors.primaryGray),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildEmailInput(SignupPageController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email Address",
          style: TextStyle(fontSize: 16.sp, color: AppColors.primaryBlack),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller.emailTec,
          decoration: InputDecoration(
            hintText: "Enter your email address",
            hintStyle: TextStyle(color: AppColors.primaryGray),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.secondaryWhite),
            ),
          ),
        ),
      ],
    );
  }
}
