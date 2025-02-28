import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/core/injectable/injectable.dart';
import 'package:food/ui/cart/Cubit/Paymentstate.dart';

import '../Cubit/Paymentviewmodel.dart';

class Bottoncheckout extends StatelessWidget {
  final double totalPrice;

  Bottoncheckout({super.key, required this.totalPrice});
  var viewmodel = getIt<PaymentViewModel>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocConsumer<PaymentViewModel, PaymentState>(
        bloc: viewmodel,
        listener: (context, state) {
          if (state is PaymentSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تمت عملية الدفع بنجاح!")),
            );
          } else if (state is PaymentError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("خطأ: ${state.fauilers.errorMassage}")),
            );
          }
        },
        builder: (context, state) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () async {
              viewmodel.createPayment("USD", totalPrice.toInt());
              await viewmodel.presentPaymentSheet();
            },
            child: state is PaymentLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : const Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
          );
        },
      ),
    );
  }
}
