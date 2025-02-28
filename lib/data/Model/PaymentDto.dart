import 'package:food/domain/entity/PaymentEntity.dart';

class PaymentDto extends PaymentEntity{
  PaymentDto({
      super.id, 
      super.object, 
      super.amount, 
      super.amountCapturable, 
      super.amountDetails, 
      super.amountReceived, 
      super.application, 
      super.applicationFeeAmount, 
      super.automaticPaymentMethods, 
      super.canceledAt, 
      super.cancellationReason, 
      super.captureMethod, 
      super.clientSecret, 
      super.confirmationMethod, 
      super.created, 
      super.currency, 
      super.customer, 
      super.description, 
      super.invoice, 
      super.lastPaymentError, 
      super.latestCharge, 
      super.livemode, 
      super.metadata, 
      super.nextAction, 
      super.onBehalfOf, 
      super.paymentMethod, 
      super.paymentMethodOptions, 
      super.paymentMethodTypes, 
      super.processing, 
      super.receiptEmail, 
      super.review, 
      super.setupFutureUsage, 
      super.shipping, 
      super.source, 
      super.statementDescriptor, 
      super.statementDescriptorSuffix, 
      super.status, 
      super.transferData, 
      super.transferGroup,});

  PaymentDto.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountDetails = json['amount_details'] != null ? AmountDetails.fromJson(json['amount_details']) : null;
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    automaticPaymentMethods = json['automatic_payment_methods'] != null ? AutomaticPaymentMethods.fromJson(json['automatic_payment_methods']) : null;
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    metadata = json['metadata'];
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodOptions = json['payment_method_options'] != null ? PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    paymentMethodTypes = json['payment_method_types'] != null ? json['payment_method_types'].cast<String>() : [];
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    source = json['source'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }

}

class PaymentMethodOptions extends PaymentMethodOptionsEntity{
  PaymentMethodOptions({
      super.card, 
      super.link,});

  PaymentMethodOptions.fromJson(dynamic json) {
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
    link = json['link'] != null ? Link.fromJson(json['link']) : null;
  }

}

class Link extends LinkEntity{
  Link({
      super.persistentToken,});

  Link.fromJson(dynamic json) {
    persistentToken = json['persistent_token'];
  }

}

class Card extends CardEntity{
  Card({
      super.installments, 
      super.mandateOptions, 
      super.network, 
      super.requestThreeDSecure,});

  Card.fromJson(dynamic json) {
    installments = json['installments'];
    mandateOptions = json['mandate_options'];
    network = json['network'];
    requestThreeDSecure = json['request_three_d_secure'];
  }

}

class AutomaticPaymentMethods extends AutomaticPaymentMethodsEntity{
  AutomaticPaymentMethods({
      super.enabled,});

  AutomaticPaymentMethods.fromJson(dynamic json) {
    enabled = json['enabled'];
  }

}

class AmountDetails extends AmountDetailsEntity{
  AmountDetails({
      super.tip,});

  AmountDetails.fromJson(dynamic json) {
    tip = json['tip'];
  }

}