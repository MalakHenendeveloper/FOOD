import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/domain/Repository/AuthRepo.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';

@injectable
class Signupusecase {
  AuthRepository repo;
  Signupusecase({required this.repo});
  Future<Either<Fauilers, UserModel>> invok(
      String name, String email, String password) async {
    return await repo.signup(name, email, password);
  }
}
