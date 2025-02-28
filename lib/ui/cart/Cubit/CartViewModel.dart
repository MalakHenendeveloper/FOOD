import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/domain/usecase/deletordersCart.dart';
import 'package:food/domain/usecase/getCartUseCase.dart';
import 'package:food/ui/cart/Cubit/CartState.dart';
import 'package:injectable/injectable.dart';
@injectable
class CartViewModel extends Cubit<CartState> {
  CartViewModel({required this.usecase, required this.delet}) : super(CartInatial());
  getCartUsecase usecase;
DeletorderesUsecase delet;
  String userid = FirebaseAuth.instance.currentUser?.uid ?? "";
  void getorders(String userid) {
    emit(CartLoading());
    usecase.invok(userid).listen((result) {
      result.fold((error) => emit(CartError(fauilers: error)),
          (success) => emit(CartSuccess(cartmodel: success)));
    });
  }
  void deletorder(Cartmodel cart)async{

    var result=await delet.invok(cart);
    result.fold((error)=>emit(CartError(fauilers: error)),
            (success) {

              emit(CartDeleted());
              getorders(userid);
        });
  }
}
