import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/domain/usecase/SignUpUsecase.dart';
import 'package:food/ui/auth/Signup/Cubit/SignUpState.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpViewModel extends Cubit<SignUpState> {
  SignUpViewModel({required this.usecase}) : super(SignUpInatial());
  var email = TextEditingController(text: 'malak@gmail.com');
  var name = TextEditingController(text: 'malak');
  var password = TextEditingController(text: '10080010');
  Signupusecase usecase;
  void signup() async {
    emit(SignUpLoading());
    var result = await usecase.invok(name.text, email.text, password.text);
    result.fold((error) => emit(SignUpError(fauilers: error)),
        (success) => emit(SignUpSuccess(userModel: success)));
  }
}
