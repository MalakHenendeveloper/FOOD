import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/data/data_Source/Cart/CartDataSource.dart';
import 'package:food/domain/Repository/CartRepository.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class CartRepositoryImp implements CartRepository {
  CartDataSource dataSource;
  CartRepositoryImp({required this.dataSource});
  Future<Either<Fauilers, Cartmodel>> cartorder(Cartmodel cart) async {
    var either = await dataSource.cart(cart);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Stream<Either<Fauilers, List<Cartmodel>>> getOrders(String userid) {
    return dataSource.getOrders(userid).map((either) {
      return either.fold((error) => Left(error), (response) => Right(response));
    });
  }

  @override
  Future<Either<Fauilers, Unit>> deletorders(Cartmodel cart)async {
  var either=await dataSource.deletorders(cart);
  return either.fold((error)=>Left(error), (response)=>Right(response));
  }
}
