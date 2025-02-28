import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/data/data_Source/Auth/AuthDataSource.dart';
import 'package:food/data/data_Source/Firestore.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Authdatasource)
class Authdatasourceimp implements Authdatasource {
  @override
  Future<Either<Fauilers, UserModel>> signup(
      String name, String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var user = UserModel(
          email: credential.user?.email, id: credential.user?.uid, name: name);
      await FireStroreData.saveUser(user);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(
            ServerError(errorMassage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        return Left(ServerError(
            errorMassage: 'The account already exists for that email.'));
      } else {
        return Left(ServerError(errorMassage: 'An Known User'));
      }
    } catch (e) {
      return Left(NetworkError(errorMassage: e.toString()));
    }
  }

  @override
  Future<Either<Fauilers, UserModel>> login(
      String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = UserModel(
          name: credential.user?.displayName,
          id: credential.user?.uid,
          email: credential.user?.email);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(ServerError(errorMassage: 'user-not-found'));
      } else if (e.code == 'wrong-password') {
        return Left(ServerError(errorMassage: 'password'));
      } else {
        return Left(NetworkError(errorMassage: 'user-not-found'));
      }
    }
  }
}
