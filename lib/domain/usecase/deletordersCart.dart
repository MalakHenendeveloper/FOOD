import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/Repository/CartRepository.dart';
import 'package:injectable/injectable.dart';

import 'Fauilers.dart';
@injectable
class DeletorderesUsecase{
  CartRepository repository;
  DeletorderesUsecase({required this.repository});
  Future<Either<Fauilers, Unit>> invok(Cartmodel cart)async {
    return await repository.deletorders(cart);
  }
}