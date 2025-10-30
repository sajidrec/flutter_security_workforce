import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_security_workforce/app/core/constants/app_assets.dart';
import 'package:flutter_security_workforce/app/modules/auth/signup_page/controllers/verify_registration_otp_page_controller.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constants/app_colors.dart';

class VerifyRegistrationOtpPage extends StatelessWidget {
  const VerifyRegistrationOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                      text: "Verify ",
                      style: TextStyle(color: AppColors.secondaryNavyBlue),
                    ),
                    TextSpan(
                      text: "Your Email",
                      style: TextStyle(color: AppColors.primaryOrange),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48.h),

              GetBuilder<VerifyRegistrationOtpPageController>(
                builder: (controller) {
                  return Pinput(
                    controller: controller.pinPutController,
                    length: 6,
                  );
                },
              ),

              SizedBox(height: 32.h),

              _buildVerifyButton(),

              SizedBox(height: 16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t received code? ",
                    style: TextStyle(color: AppColors.primaryBlack),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend Now",
                      style: TextStyle(color: AppColors.primaryOrange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildVerifyButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryNavyBlue,
          foregroundColor: AppColors.primaryWhite,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Verify",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
