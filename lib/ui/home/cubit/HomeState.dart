import 'package:food/data/Model/Categoreis.dart';

abstract class Homestate {}

class HomeInatial extends Homestate {}

class ChangeCategories extends Homestate {
  int index;
  List<ProductModel> product;
  ChangeCategories({required this.index, required this.product});
}
