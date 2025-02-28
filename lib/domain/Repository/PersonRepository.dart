import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class PersonRepository{
  Future<Either<Fauilers, UserModel?>>getUsers(UserModel user);
}