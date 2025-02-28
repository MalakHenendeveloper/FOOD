import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/ui/MapsDilevery/cubit/Mapsstate.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingCubit extends Cubit<OrderTrackingState> {
  OrderTrackingCubit() : super(OrderTrackingInitial());

  void loadOrderTracking() {
    emit(OrderTrackingLoading());


    Future.delayed(Duration(seconds: 2), () {
      emit(OrderTrackingLoaded(
        orderStatus: "The representative is the way🚴‍♂️",
        estimatedTime: "15 Minutes",
        deliveryLocation: LatLng(30.0444, 31.2357),
      ));
    });
  }

  void updateDeliveryLocation(LatLng newLocation) {
    if (state is OrderTrackingLoaded) {
      final currentState = state as OrderTrackingLoaded;
      emit(OrderTrackingLoaded(
        orderStatus: currentState.orderStatus,
        estimatedTime: currentState.estimatedTime,
        deliveryLocation: newLocation,
      ));
    }
  }
}
