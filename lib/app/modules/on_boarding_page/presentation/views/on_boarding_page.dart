import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_security_workforce/app/core/constants/app_assets.dart';
import 'package:flutter_security_workforce/app/core/constants/app_colors.dart';
import 'package:flutter_security_workforce/app/routes/app_routes.dart';

import 'package:get/get.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            AppAssets.securityGuardImg,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          // BackdropFilter for blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: AppColors.primarySteelBlue.withAlpha(
                (255 * 0.000).round(),
              ),
            ),
          ),
          // Using Align and Padding properly to handle bottom positioning
          Align(
            alignment: Alignment.bottomLeft, // Align to the bottom center
            child: Padding(
              padding: EdgeInsets.all(20.w),
              // Adjust this value to your needs
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // Prevents Column from taking too much space
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "Your Role, ",
                          style: TextStyle(color: AppColors.primaryWhite),
                        ),
                        TextSpan(
                          text: "Your Opportunity",
                          style: TextStyle(color: AppColors.primaryOrange),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Connect guards with companies through trust, skill, and reliability.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.primaryWhite,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryOrange,
                        foregroundColor: AppColors.primaryWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        "Login as Operative",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryOrange,
                        foregroundColor: AppColors.primaryWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        "Login as Company",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 12.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(color: AppColors.primaryWhite),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.signupRoute);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: AppColors.primaryOrange),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
