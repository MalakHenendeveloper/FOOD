import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttonsections extends StatelessWidget {
   Buttonsections({super.key, required this.ontap});
VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return    Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(
          vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextButton(
          onPressed:ontap,
          child: Text(
            'Sign In',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
