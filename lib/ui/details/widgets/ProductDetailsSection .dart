import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/Dialog.dart';
import 'package:food/core/injectable/injectable.dart';
import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/details/widgets/ButtonAddcart.dart';
import 'package:food/ui/details/widgets/ProductDescraptio.dart';
import 'package:food/ui/details/widgets/ProductImage.dart';
import 'package:food/ui/details/widgets/ProductPrice.dart';
import 'package:food/ui/details/cubit/DetailsState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../cubit/DetailsViewmodel.dart';

class ProductDetailsSection extends StatelessWidget {
  ProductDetailsSection({super.key, required this.product});
  final ProductModel product;
  final viewmodel = getIt<DetaielsViewmodel>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetaielsViewmodel, Detailsstate>(
      bloc: viewmodel,
      listener: (context, state) {
        if (state is AddtocartError) {
          CustomDialog.show(context,
              dialogType: DialogType.error,
              title: 'Error , Not Add To Cart',
              description: state.fauilers.errorMassage);
        } else if (state is AddtocartSuccess) {
          CustomDialog.show(context,
              dialogType: DialogType.success,
              title: 'SuccessFly ',
              description: 'Success , Add Product To Cart');
        }
      },
      builder: (context, state) {
        final count = (state is CounterUpdate) ? state.count : 1;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Productimage(
              product: product,
            ),
            SizedBox(height: 10.h),
            Text(
              product.name,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Productprice(
              product: product,
              viewmodel: viewmodel,
              count: count,
            ),
            SizedBox(height: 10.h),
            Text(
              'INGREDIENTS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Text(
              product.ingredients.join('\n'),
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
            ),
            SizedBox(height: 10.h),
            Text(
              'DESCRIPTION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Productdescraption(
              product: product,
            ),
            SizedBox(height: 20.h),
            Buttonaddcart(
              product: product,
              viewmodel: viewmodel,
              count: count,
            )
          ],
        );
      },
    );
  }
}
