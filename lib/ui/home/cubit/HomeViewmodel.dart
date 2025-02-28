import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/home/cubit/HomeState.dart';

class Homeviewmodel extends Cubit<Homestate> {
  Homeviewmodel() : super(HomeInatial());
  void changecategories(int index) {
    List<ProductModel> selectedproduct = categories[index].products;
    emit(ChangeCategories(index: index, product: selectedproduct));
  }
}
