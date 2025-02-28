import 'package:dartz/dartz.dart';
import 'package:food/core/Api/Dio.dart';
import 'package:food/data/Model/PaymentDto.dart';
import 'package:food/data/data_Source/Payment/PaymentDataSource.dart';
import 'package:food/domain/entity/PaymentEntity.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:PaymentDataSource )
class PaymentDataSourceimp implements PaymentDataSource{
  ApiManger apiManger;
  PaymentDataSourceimp({required this.apiManger});
  @override
  Future<Either<Fauilers, PaymentEntity>> createPaymentEntity(String currency, int amount) async{
   try{
     var response=await apiManger.Createpaymentintents(currency, amount);
     var responsepayment= PaymentDto.fromJson(response.data);
     if(response.statusCode!>=200 && response.statusCode!<=299){
       return Right(responsepayment);
     }
     else{
       return Left( ServerError(errorMassage: response.statusMessage!));
     }
   }
       catch(e){
         return Left( NetworkError(errorMassage:e.toString()));
       }
  }
}