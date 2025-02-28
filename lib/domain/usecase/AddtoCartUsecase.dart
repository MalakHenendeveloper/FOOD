import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/Repository/CartRepository.dart';
import 'package:injectable/injectable.dart';

import 'Fauilers.dart';
@injectable
class CartUseCase{
  CartRepository repository;
  CartUseCase({required this.repository});
  Future<Either<Fauilers, Cartmodel>>   invok(Cartmodel cart)async{
    return await repository.cartorder(cart);
  }
}