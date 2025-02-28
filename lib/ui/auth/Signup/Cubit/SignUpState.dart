import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class SignUpState {}

class SignUpInatial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpError extends SignUpState {
  Fauilers fauilers;
  SignUpError({required this.fauilers});
}

class SignUpSuccess extends SignUpState {
  UserModel userModel;
  SignUpSuccess({required this.userModel});
}
