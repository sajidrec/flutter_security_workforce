import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_security_workforce/app/core/constants/app_assets.dart';
import 'package:flutter_security_workforce/app/core/constants/app_colors.dart';
import 'package:flutter_security_workforce/app/routes/app_routes.dart';
import 'package:get/get.dart';

class OnBoardingGetStartedPage extends StatelessWidget {
  const OnBoardingGetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondaryNavyBlue,
              foregroundColor: AppColors.primaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            onPressed: () {
              Get.toNamed(AppRoutes.onBoardingRoute);
            },
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.securiverseIcon,
                width: 148.w,
                height: 148.h,
              ),
              SizedBox(height: 24.h),
              Text(
                "Securiverse",
                style: TextStyle(
                  fontSize: 48.sp,
                  color: AppColors.secondaryNavyBlue,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Opportunity. On Demand",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.primarySteelBlue,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
