import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class LoginState {}

class LoginInatial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginError extends LoginState {
  Fauilers fauilers;
  LoginError({required this.fauilers});
}

class LoginSuccess extends LoginState {
  UserModel user;
  LoginSuccess({required this.user});
}
