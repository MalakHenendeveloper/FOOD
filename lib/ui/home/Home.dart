import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/home/cubit/HomeState.dart';
import 'package:food/ui/home/cubit/HomeViewmodel.dart';
import 'package:food/ui/home/widgets/Categories.dart';
import 'package:food/ui/home/widgets/Headers.dart';
import 'package:food/ui/home/widgets/ProductCard.dart';

class HomeSCreen extends StatelessWidget {
  HomeSCreen({super.key});
  var viewmodel = Homeviewmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<Homeviewmodel, Homestate>(
              bloc: viewmodel,
              builder: (context, state) {
                var selectedindex = state is ChangeCategories ? state.index : 0;
                var selectedproduct = state is ChangeCategories
                    ? state.product
                    : categories[0].products;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Headers(),
                    Container(
                      height: 80.h,
                      width: 400.w,
                      child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => viewmodel.changecategories(index),
                              child: Categories(
                                categoreis: categories[index],
                                isselected: selectedindex == index,
                              ),
                            );
                          }),
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7 / 0.90,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: selectedproduct.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: selectedproduct[index]);
                        },
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
