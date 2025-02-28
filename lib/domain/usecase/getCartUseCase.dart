import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/Repository/CartRepository.dart';
import 'package:injectable/injectable.dart';

import 'Fauilers.dart';

@injectable
class getCartUsecase{
  CartRepository repository;
  getCartUsecase({required this.repository});
 Stream<Either<Fauilers, List<Cartmodel>>>  invok(String userid){
    return repository.getOrders(userid);
  }
}