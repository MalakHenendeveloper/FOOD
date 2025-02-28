import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:food/ui/details/cubit/DetailsViewmodel.dart';

abstract class Detailsstate {}

class DetailsInatial extends Detailsstate {}

class DetailsLoading extends Detailsstate {}

class CounterInatial extends Detailsstate {
  final int count;
  CounterInatial({required this.count});
}

class CounterUpdate extends Detailsstate {
  final int count;
  CounterUpdate({required this.count});
}
class AddtocartLoading extends Detailsstate{}

class AddtocartError extends Detailsstate{
  Fauilers fauilers;
  AddtocartError({required this.fauilers});
}
class AddtocartSuccess extends Detailsstate{
  Cartmodel cart;
  AddtocartSuccess({required this.cart});
}
