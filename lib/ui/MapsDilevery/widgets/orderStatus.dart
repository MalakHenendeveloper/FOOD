import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderStatus extends StatelessWidget {
  OrderStatus(
      {super.key,
      required this.ontap,
      required this.orderStatus,
      required this.deliveryLocation,
      required this.estimatedTime});
  final String orderStatus;
  final String estimatedTime;
  final LatLng deliveryLocation;
  final VoidCallback ontap;
  final String deliveryPersonName = "Malak";
  final String deliveryPersonPhone = "+2001008249001";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "🔹 Status: ${orderStatus}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "⏳ Expected time: ${estimatedTime}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "🛵 The delegate: $deliveryPersonName",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: ontap,
                    child: Text(
                      "📞 $deliveryPersonPhone",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: ontap,
            icon: Icon(Icons.phone),
            label: Text("Contact your representative"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 45),
            ),
          ),
        ],
      ),
    );
  }
}
