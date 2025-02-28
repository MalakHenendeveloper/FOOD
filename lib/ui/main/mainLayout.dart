import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/ui/main/Cubit/MainState.dart';
import 'package:food/ui/main/Cubit/MainViewModel.dart';

class Mainlayout extends StatelessWidget {
  Mainlayout({super.key});
  final viewmodel = Mainviewmodel();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Mainviewmodel, Mainstate>(
        bloc: viewmodel,
        builder: (context, state) {
          return Scaffold(
            body: viewmodel.tabs[viewmodel.index],
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) => viewmodel.changetabs(value),
                currentIndex: viewmodel.index,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.redAccent,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopify,
                      ),
                      label: 'Shope'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.payment,
                      ),
                      label: 'payment'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: 'Profile'),
                ]),
          );
        });
  }
}
