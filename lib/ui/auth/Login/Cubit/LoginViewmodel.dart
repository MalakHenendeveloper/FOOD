import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/domain/usecase/LoginUscase.dart';
import 'package:food/ui/auth/Login/Cubit/LoginStatr.dart';
import 'package:injectable/injectable.dart';

@injectable
class Loginviewmodel extends Cubit<LoginState> {
  Loginviewmodel({required this.usecase}) : super(LoginInatial());
  final email = TextEditingController(text: 'malak@gmail.com');
  final password = TextEditingController(text: '10080010');
  Loginuscase usecase;
  void login() async {
    emit(LoginLoading());
    final result = await usecase.invok(email.text, password.text);
    result.fold((error) => emit(LoginError(fauilers: error)),
        (success) => emit(LoginSuccess(user: success)));
  }
}
