import 'package:flutter/material.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/ui/cart/Cubit/CartViewModel.dart';

class Itemcart extends StatelessWidget {
   Itemcart({super.key, required this.item, required this.viewModel});
Cartmodel item;
CartViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Image.asset(item.image, width: 60),
        title: Text(item.name,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold)),
        subtitle: Text('\$${item.price}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [


            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                viewModel.deletorder(item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
