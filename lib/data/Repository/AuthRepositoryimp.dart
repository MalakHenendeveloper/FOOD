import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/data/data_Source/Auth/AuthDataSource.dart';

import 'package:food/domain/Repository/AuthRepo.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class Authrepositoryimp implements AuthRepository {
  Authdatasource data;
  Authrepositoryimp({required this.data});
  @override
  Future<Either<Fauilers, UserModel>> signup(
      String name, String email, String password) async {
    var either = await data.signup(name, email, password);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Fauilers, UserModel>> login(
      String email, String password) async {
    var either = await data.login(email, password);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
