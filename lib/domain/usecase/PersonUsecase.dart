import 'package:dartz/dartz.dart';
import 'package:food/domain/Repository/PersonRepository.dart';
import 'package:injectable/injectable.dart';

import '../../data/Model/User.dart';
import 'Fauilers.dart';
@injectable
class PersonUsecase {
  PersonRepository repository;
  PersonUsecase({required this.repository});
  Future<Either<Fauilers, UserModel?>>   invok(UserModel user)async{
    return await repository.getUsers(user);
  }
}