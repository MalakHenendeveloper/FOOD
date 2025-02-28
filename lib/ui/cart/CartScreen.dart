import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/injectable/injectable.dart';
import 'package:food/ui/cart/Cubit/CartState.dart';
import 'package:food/ui/cart/Cubit/CartViewModel.dart';
import 'package:food/ui/cart/widgets/BottonCheckout.dart';
import 'package:food/ui/cart/widgets/ItemCart.dart';
import 'package:food/ui/cart/widgets/ItemTotalPrice.dart';

class CartScreen extends StatelessWidget {
  var viewmodel = getIt<CartViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: BlocBuilder<CartViewModel, CartState>(
          bloc: viewmodel..getorders(viewmodel.userid),
          builder: (context, state) {
            if (state is CartLoading) {
              return CircularProgressIndicator();
            }
            if (state is CartError) {
              return Text(state.fauilers.errorMassage);
            }

            if (state is CartSuccess) {
              if (state.cartmodel.isEmpty) {
                return Center(
                    child: Text(
                  'Not Found Order ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp),
                ));
              }
              double totalPrice = state.cartmodel.fold(
                  0,
                  (sum, item) =>
                      sum +
                      ((double.tryParse(item.price.toString()) ?? 0) *
                          (double.tryParse(item.qunitty.toString()) ?? 0)));

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.cartmodel.length,
                      itemBuilder: (context, index) {
                        var item = state.cartmodel[index];

                        return Itemcart(
                          item: item,
                          viewModel: viewmodel,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ],
                    ),
                    child: Column(
                      children: [
                        Itemtotalprice(totalPrice: totalPrice),
                        SizedBox(height: 10),
                        Bottoncheckout(
                          totalPrice: totalPrice,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
            return Container();
          }),
    );
  }
}
