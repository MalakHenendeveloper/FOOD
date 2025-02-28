import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/Model/Categoreis.dart';

class Productimage extends StatelessWidget {
  const Productimage({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0.2, 0.5),
                spreadRadius: 0.2,
                blurRadius: 0.7)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.asset(
          product.image,
          height: 300.h,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
