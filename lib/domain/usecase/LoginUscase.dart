import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/domain/Repository/AuthRepo.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';

@injectable
class Loginuscase {
  AuthRepository repository;
  Loginuscase({required this.repository});
  Future<Either<Fauilers, UserModel>> invok(
      String email, String password) async {
    return await repository.login(email, password);
  }
}
