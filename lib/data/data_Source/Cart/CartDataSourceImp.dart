import 'package:dartz/dartz.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/data/data_Source/Firestore.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';
import 'CartDataSource.dart';

@Injectable(as: CartDataSource)
class CartDataSourceImpl implements CartDataSource {
  @override
  Future<Either<Fauilers, Cartmodel>> cart(Cartmodel cart) async {
    try {
      var response = await FireStroreData.saveorder(cart);
      return Right(response);
    } catch (e) {
      return Left(NetworkError(errorMassage: e.toString()));
    }
  }

  @override
  Stream<Either<Fauilers, List<Cartmodel>>> getOrders(String userid) {
    //chat gpt
    return FireStroreData.getorder(userid).map((snapshot) {
      try {
        //  تحويل QuerySnapshot<CartModel> إلى List<CartModel>
        List<Cartmodel> orders = snapshot.docs.map((doc) => doc.data()).toList();
        return Right(orders);
      } catch (e) {
        return Left(NetworkError(errorMassage: e.toString()));
      }
    });
  }

  @override
  Future<Either<Fauilers, Unit>> deletorders(Cartmodel cart) async{
 try{
   await FireStroreData.deletorders(cart);
   return Right(unit);
 }
     catch(e){
   return Left(NetworkError(errorMassage: e.toString()));
     }
  }
}




