import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/details/cubit/DetailsViewmodel.dart';

class Productprice extends StatelessWidget {
  const Productprice({super.key, required this.product, required this.viewmodel, required this.count});
  final ProductModel product;
  final DetaielsViewmodel viewmodel;
  final int count;
  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Text(
          'Price: \$${product.price}',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color.fromARGB(255, 245, 45, 31),
              ),
              child: IconButton(
                onPressed: () => viewmodel.decrement(),
                icon: Icon(Icons.remove, color: Colors.white),
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 8.w),
            Container(
              height: 40.h,
              width: 40.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color.fromARGB(255, 245, 45, 31),
              ),
              child: IconButton(
                onPressed: () => viewmodel.increment(),
                icon: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );  }
}
