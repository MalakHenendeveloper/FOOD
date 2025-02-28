import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/ui/MapsDilevery/cubit/Screens.dart';
import 'package:food/ui/home/Home.dart';
import 'package:food/ui/main/Cubit/MainState.dart';
import 'package:food/ui/person/PersonScreen.dart';
import '../../cart/CartScreen.dart';

class Mainviewmodel extends Cubit<Mainstate> {
  Mainviewmodel() : super(MainInatial());
  List<Widget> tabs = [
    HomeSCreen(),
    CartScreen(),
    OrderTrackingScreen(),
    Personscreen()
  ];
  int index = 0;
  void changetabs(int selectedindex) {
    emit(MainInatial());
    index = selectedindex;
    emit(ChangeTabs());
  }
}
