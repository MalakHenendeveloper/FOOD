import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Routes/AppRoutes.dart';
import 'package:food/data/Model/Categoreis.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [BoxShadow(spreadRadius: 0.7, blurRadius: 2)]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              product.image,
              height: 160.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          Text(
            ' \$${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40.h,
                width: 80.w,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r))),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Approutes.details,
                          arguments: product);
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 25.h,
                      color: Colors.white,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
