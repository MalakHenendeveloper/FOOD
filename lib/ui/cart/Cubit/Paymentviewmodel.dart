import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/domain/usecase/PaymentUsecasintent.dart';
import 'package:food/ui/cart/Cubit/Paymentstate.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

@injectable
class PaymentViewModel extends Cubit<PaymentState> {
  PaymentViewModel({required this.usecase}) : super(PaymentInatial());
  final PaymentUsecaseintent usecase;
  Future<void> createPayment(String currency, int amount) async {
    emit(PaymentLoading());
    var result = await usecase.invok(currency, amount);
    result.fold(
      (error) => emit(PaymentError(fauilers: error)),
      (success) async {
        try {
          await initPaymentSheet(success.clientSecret!);
          await presentPaymentSheet();
        } catch (e) {
          throw Exception(" $e");
        }
      },
    );
  }

  Future<void> initPaymentSheet(String clientSecret) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: 'Food Delivery',
        ),
      );
    } catch (e) {
      throw Exception("Failed to initialize Payment Sheet: $e");
    }
  }

  Future<void> presentPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      emit(PaymentSheetSuccess());
    } catch (e) {
      throw Exception(" $e");
    }
  }
}
