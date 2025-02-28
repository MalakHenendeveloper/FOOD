import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Forget Password ?',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
