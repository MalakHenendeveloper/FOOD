import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/details/cubit/DetailsViewmodel.dart';

class Buttonaddcart extends StatelessWidget {
  const Buttonaddcart({super.key, required this.viewmodel, required this.product, required this.count});
final DetaielsViewmodel viewmodel;
final ProductModel product;
final int count;

  @override
  Widget build(BuildContext context) {
    return        Container(
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: Colors.red),
      child: TextButton(
        onPressed: () {
          viewmodel.order(Cartmodel(
            id: product.id ?? "",
            name: product.name,
            image: product.image,
            price: product.price.toString(),
            qunitty: count.toString(),
            userid: viewmodel.userid

          ));
        },
        child: Text(
          'Add To Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
