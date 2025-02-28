import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/auth/Login/Cubit/LoginViewmodel.dart';

class Customtextfield extends StatelessWidget {
   Customtextfield({super.key, required this.controller, this.hintText, this.icon});
   TextEditingController controller;
   String? hintText;
   IconData ?icon;
  @override
  Widget build(BuildContext context) {
    return    Container(
      padding:
      EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.grey[200]),
      child: TextFormField(
        controller:controller,
        decoration: InputDecoration(
            hintText:hintText ,
            border: InputBorder.none,
            prefixIcon: Icon(icon)),
      ),
    );
  }
}
