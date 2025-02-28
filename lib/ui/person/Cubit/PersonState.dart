import 'package:food/data/Model/User.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class PersonState{}
class PersonInatial extends PersonState{}
class PersonLoading extends PersonState{}
class PersonError extends PersonState{
  Fauilers fauilers;
  PersonError({required this.fauilers});
}
class PersonSuccess extends PersonState{
  UserModel user;
  PersonSuccess({required this.user});
}