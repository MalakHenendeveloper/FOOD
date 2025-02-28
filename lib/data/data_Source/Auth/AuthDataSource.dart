import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class Authdatasource {
  Future<Either<Fauilers, UserModel>> signup(
      String name, String email, String password);

  Future<Either<Fauilers, UserModel>> login(String email, String password);
}
