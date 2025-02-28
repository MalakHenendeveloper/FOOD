import 'package:dartz/dartz.dart';
import 'package:food/data/data_Source/Payment/PaymentDataSource.dart';
import 'package:food/domain/entity/PaymentEntity.dart';
import 'package:food/domain/usecase/Fauilers.dart';
import 'package:injectable/injectable.dart';
import '../../domain/Repository/paymentRespositoryintents.dart';
@Injectable(as:PaymentRepositoryintent )
class PaymentRepositoryintentImp implements PaymentRepositoryintent {
  PaymentDataSource data;
  PaymentRepositoryintentImp({required this.data});
  @override
  Future<Either<Fauilers, PaymentEntity>> createPaymentintent(
      String currency, int amount) async {
    var either = await data.createPaymentEntity(currency, amount);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
