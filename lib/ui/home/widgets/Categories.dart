import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/data/Model/Categoreis.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.categoreis, required this.isselected});
  CategoryModel categoreis;
  bool isselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 125.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: isselected ? Colors.red : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            categoreis.image,
            height: 40.h,
            width: 40.w,
          ),
          Text(
            categoreis.name,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: isselected ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
