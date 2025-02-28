import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/AppImages.dart';
import 'package:food/core/Routes/AppRoutes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 20.h,
        children: [
          Image.asset(
            Appimages.onboard,
            height: 550.h,
          ),
          Text(
            'The Fastest\nFood Delivery',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
          ),
          Text(
            textAlign: TextAlign.center,
            'Craving Something Delicious?\nOrder Now and Get Your Favorite\nDeliverd Fast!',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
                color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Approutes.home);
            },
            child: Container(
              width: 250.w,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xff8c592a)),
              child: Text(
                'Get Statrted',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
