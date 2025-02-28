import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/AppImages.dart';

class Headersection extends StatelessWidget {
  const Headersection({super.key});

  @override
  Widget build(BuildContext context) {
    return      Container(
      height: 340.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffffefbf),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r))),
      child: Column(
        children: [
          Image.asset(
            Appimages.pan,
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: 200.h,
          ),
          Image.asset(
            Appimages.logo,
            height: 80.h,
          )
        ],
      ),
    );
  }
}
