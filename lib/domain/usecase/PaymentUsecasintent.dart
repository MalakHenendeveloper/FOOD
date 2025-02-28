import 'package:dartz/dartz.dart';
import 'package:food/domain/Repository/paymentRespositoryintents.dart';
import 'package:injectable/injectable.dart';

import '../entity/PaymentEntity.dart';
import 'Fauilers.dart';
@injectable
class PaymentUsecaseintent{
  PaymentRepositoryintent repository;
  PaymentUsecaseintent({required this.repository});
  Future<Either<Fauilers, PaymentEntity>>  invok(String currency, int amount){
    return repository.createPaymentintent(currency, amount);
  }
}