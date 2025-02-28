
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/PersonUsecase.dart';
import 'package:food/ui/person/Cubit/PersonState.dart';
import 'package:injectable/injectable.dart';
@injectable
class PersonViewModel extends Cubit<PersonState> {
  PersonViewModel({required this.usecase, }) : super(PersonInatial());
  PersonUsecase usecase;

  getuser(UserModel user) async {
    emit(PersonLoading());
  //  var user = FirebaseAuth.instance.currentUser?.uid;
    var result = await usecase.invok(user );
    result.fold((error) => emit(PersonError(fauilers: error)),
        (success) => emit(PersonSuccess(user: success!)));
  }
  logout(BuildContext context)async{
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed('/login');
  }
  deleteuser(BuildContext context)async{
    await FirebaseAuth.instance.currentUser?.delete();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
