import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Routes/AppRoutes.dart';

class Donthaveaccount extends StatelessWidget {
  const Donthaveaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Don`t Have Account ? ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Approutes.signup);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
