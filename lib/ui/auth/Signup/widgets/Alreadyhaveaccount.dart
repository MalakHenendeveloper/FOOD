import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Routes/AppRoutes.dart';

class Alreadyhaveaccount extends StatelessWidget {
  const Alreadyhaveaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Already Have Account ? ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Approutes.login);
            },
            child: Text(
              'Log In',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
