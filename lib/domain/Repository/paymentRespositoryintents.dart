import 'package:dartz/dartz.dart';
import 'package:food/domain/entity/PaymentEntity.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class PaymentRepositoryintent {
  Future<Either<Fauilers , PaymentEntity>>createPaymentintent(String currency, int amount);
}