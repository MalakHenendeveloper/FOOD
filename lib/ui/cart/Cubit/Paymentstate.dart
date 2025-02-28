import 'package:food/domain/entity/PaymentEntity.dart';
import 'package:food/domain/usecase/Fauilers.dart';

abstract class PaymentState{}
class PaymentInatial extends PaymentState{}
class PaymentLoading extends PaymentState{}
class PaymentError extends PaymentState{
  Fauilers fauilers;
  PaymentError({required this.fauilers});
}
class PaymentSuccess extends PaymentState{
  PaymentEntity entity;
  PaymentSuccess({required this.entity});
}
class PaymentSheetSuccess extends PaymentState {}