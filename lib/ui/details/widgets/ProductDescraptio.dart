import 'package:animated_read_more_text/animated_read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/data/Model/Categoreis.dart';

class Productdescraption extends StatelessWidget {
  const Productdescraption({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return   AnimatedReadMoreText(
      product.description,
      maxLines: 3,
      readMoreText: 'Show More',
      readLessText: 'Show Less',
      textStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      buttonTextStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
