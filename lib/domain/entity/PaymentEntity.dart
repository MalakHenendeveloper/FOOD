class PaymentEntity {
  PaymentEntity({
      this.id, 
      this.object, 
      this.amount, 
      this.amountCapturable, 
      this.amountDetails, 
      this.amountReceived, 
      this.application, 
      this.applicationFeeAmount, 
      this.automaticPaymentMethods, 
      this.canceledAt, 
      this.cancellationReason, 
      this.captureMethod, 
      this.clientSecret, 
      this.confirmationMethod, 
      this.created, 
      this.currency, 
      this.customer, 
      this.description, 
      this.invoice, 
      this.lastPaymentError, 
      this.latestCharge, 
      this.livemode, 
      this.metadata, 
      this.nextAction, 
      this.onBehalfOf, 
      this.paymentMethod, 
      this.paymentMethodOptions, 
      this.paymentMethodTypes, 
      this.processing, 
      this.receiptEmail, 
      this.review, 
      this.setupFutureUsage, 
      this.shipping, 
      this.source, 
      this.statementDescriptor, 
      this.statementDescriptorSuffix, 
      this.status, 
      this.transferData, 
      this.transferGroup,});


  String? id;
  String? object;
  num? amount;
  num? amountCapturable;
  AmountDetailsEntity? amountDetails;
  num? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethodsEntity? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  num? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  dynamic metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptionsEntity? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;


}

class PaymentMethodOptionsEntity {
  PaymentMethodOptionsEntity({
      this.card, 
      this.link,});


  CardEntity? card;
  LinkEntity? link;



}

class LinkEntity {
  LinkEntity({
      this.persistentToken,});


  dynamic persistentToken;



}

class CardEntity {
  CardEntity({
      this.installments, 
      this.mandateOptions, 
      this.network, 
      this.requestThreeDSecure,});


  dynamic installments;
  dynamic mandateOptions;
  dynamic network;
  String? requestThreeDSecure;


}

class AutomaticPaymentMethodsEntity {
  AutomaticPaymentMethodsEntity({
      this.enabled,});
  
  bool? enabled;


}

class AmountDetailsEntity {
  AmountDetailsEntity({
      this.tip,});


  dynamic tip;



}