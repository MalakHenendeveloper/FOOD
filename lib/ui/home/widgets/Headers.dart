import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/AppImages.dart';

class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    Appimages.logo,
                    height: 70.h,
                  ),
                ),
                Text(
                  'Order Your Favorite Food!',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.asset(
                Appimages.boy,
                fit: BoxFit.cover,
                height: 55.h,
                width: 60.w,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50.h,
              width: 300.w,
              padding: EdgeInsets.only(left: 10.w),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15.r)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Food Item', border: InputBorder.none),
              ),
            ),
            Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(15.r)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                )),
          ],
        )
      ],
    );
  }
}
