import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class CartState{}
class CartInatial extends CartState{}
class CartLoading extends CartState{}
class CartError extends CartState{
  Fauilers fauilers;
  CartError({required this.fauilers});
}
class CartSuccess extends CartState{
  List<Cartmodel> cartmodel;
  CartSuccess({required this.cartmodel});
}
class CartDeleted extends CartState {}