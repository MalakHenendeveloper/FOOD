import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/data/data_Source/Persondata/pesrondatsource.dart';
import 'package:food/domain/Repository/PersonRepository.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: PersonRepository)
class PersonRepositoryImp implements PersonRepository{
  PersonDataSource dataSource;
  PersonRepositoryImp({required this.dataSource});
  @override
  Future<Either<Fauilers, UserModel?>> getUsers(UserModel user) async{
  var either=await dataSource.getUsers(user);
  return either.fold((error)=>Left(error), (response)=>Right(response));
  }
}