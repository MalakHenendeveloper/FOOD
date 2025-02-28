import 'package:dartz/dartz.dart';
import 'package:food/data/Model/User.dart';
import 'package:food/data/data_Source/Firestore.dart';
import 'package:food/data/data_Source/Persondata/pesrondatsource.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: PersonDataSource)
class PersonDataSourceimpl implements PersonDataSource{

  Future<Either<Fauilers, UserModel?>> getUsers(UserModel users)async {
 try{
   var response=await FireStroreData.getUser(users);
   return Right(response);
 }catch(e){
return Left(NetworkError(errorMassage: e.toString()));
 }
  }
}