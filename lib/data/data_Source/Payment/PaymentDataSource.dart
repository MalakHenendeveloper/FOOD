import 'package:dartz/dartz.dart';
import 'package:food/domain/entity/PaymentEntity.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class PaymentDataSource{
  Future<Either<Fauilers, PaymentEntity>>createPaymentEntity(String currency, int amount);
}