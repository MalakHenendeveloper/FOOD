import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/usecase/AddtoCartUsecase.dart';
import 'package:food/ui/details/cubit/DetailsState.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetaielsViewmodel extends Cubit<Detailsstate> {
  DetaielsViewmodel({required this.useCase}) : super(DetailsInatial());
  String userid = FirebaseAuth.instance.currentUser?.uid ?? "";
  void increment() {
    if (state is DetailsInatial) {
      emit(CounterUpdate(count: 2));
    } else if (state is CounterUpdate) {
      final count = (state as CounterUpdate).count + 1;
      emit(CounterUpdate(count: count));
    }
  }

  void decrement() {
    if (state is CounterUpdate) {
      final count = (state as CounterUpdate).count;
      if (count > 1) {
        emit(CounterUpdate(count: count - 1));
      }
    }
  }

  CartUseCase useCase;

  int quantity = 1;
  Future<void> order(Cartmodel cart) async {
    if (state is CounterUpdate) {
      quantity = (state as CounterUpdate).count;
    }
    emit(AddtocartLoading());

    var updatedCart = Cartmodel(
      id: cart.id,
      name: cart.name,
      image: cart.image,
      price: cart.price,
      qunitty: quantity.toString(),
      userid: userid
    );

    print(
        "🔹 الكمية المرسلة إلى Firebase: ${updatedCart.qunitty}"); // ✅ التحقق من القيمة قبل الإرسال

    var result = await useCase.invok(updatedCart);

    result.fold(
      (error) => emit(AddtocartError(fauilers: error)),
      (success) {
        print('✅ تمت الإضافة بنجاح، الكمية: ${success.qunitty}');
        emit(AddtocartSuccess(cart: success));
      },
    );
  }
}
