import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class OrderTrackingState extends Equatable {
  @override
  List<Object> get props => [];
}

class OrderTrackingInitial extends OrderTrackingState {}

class OrderTrackingLoading extends OrderTrackingState {}

class OrderTrackingLoaded extends OrderTrackingState {
  final String orderStatus;
  final String estimatedTime;
  final LatLng deliveryLocation;

  OrderTrackingLoaded({
    required this.orderStatus,
    required this.estimatedTime,
    required this.deliveryLocation,
  });

  @override
  List<Object> get props => [orderStatus, estimatedTime, deliveryLocation];
}

class OrderTrackingError extends OrderTrackingState {
  final String message;
  OrderTrackingError(this.message);

  @override
  List<Object> get props => [message];
}
