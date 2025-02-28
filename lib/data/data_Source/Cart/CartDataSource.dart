import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class CartDataSource{
  Future<Either<Fauilers, Cartmodel>>cart(Cartmodel cart);
  Stream<Either<Fauilers, List<Cartmodel>>> getOrders(String userid);
  Future<Either<Fauilers, Unit>>deletorders(Cartmodel cart);
}