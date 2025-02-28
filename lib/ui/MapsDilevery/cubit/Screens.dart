import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/ui/MapsDilevery/cubit/viewmodel.dart';
import 'package:food/ui/MapsDilevery/widgets/Googlemaps.dart';
import 'package:food/ui/MapsDilevery/widgets/orderStatus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Mapsstate.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Track Order")),
      body: BlocProvider(
        create: (context) => OrderTrackingCubit()..loadOrderTracking(),
        child: BlocBuilder<OrderTrackingCubit, OrderTrackingState>(
          builder: (context, state) {
            if (state is OrderTrackingLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is OrderTrackingLoaded) {
              return Column(
                children: [
                  Googlemaps(
                    deliveryLocation: state.deliveryLocation,
                  ),
                  OrderStatus(
                    ontap: () {},
                    orderStatus: state.orderStatus,
                    deliveryLocation: state.deliveryLocation,
                    estimatedTime: state.estimatedTime,
                  )
                ],
              );
            } else if (state is OrderTrackingError) {
              return Center(child: Text("Erorr ${state.message}"));
            }
            return Center(child: Text("No Data."));
          },
        ),
      ),
    );
  }
//chatgpt
  void _launchPhoneCall(String phoneNumber) async {
    final Uri url = Uri.parse("tel:$phoneNumber");

    if (await launchUrl(url)) {
      // ✅ استخدام launchUrl مباشرة
      await launchUrl(url);
    } else {
      throw "لا يمكن الاتصال بالمندوب!";
    }
  }
}
