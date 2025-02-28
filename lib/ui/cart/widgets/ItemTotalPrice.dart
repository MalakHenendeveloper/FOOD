import 'package:flutter/material.dart';

class Itemtotalprice extends StatelessWidget {
   Itemtotalprice({super.key, required this.totalPrice});
  double totalPrice;
  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total:',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
        Text('\$${totalPrice}',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
