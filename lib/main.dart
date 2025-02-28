import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Api/EndPoints.dart';
import 'package:food/core/Routes/AppRoutes.dart';
import 'package:food/core/Routes/RoutesManger.dart';
import 'package:food/core/injectable/injectable.dart';
import 'core/Resources/BlocObserver.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
void main() async {
  configureDependencies();
  Bloc.observer = MyBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = EndPoints.puplishkey;
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyCUO6ObZjMYV8-VDrDP59kDXRDUYmMXSPw',
              appId: '1:242215483285:android:f8ffc15fd668668b39a89c',
              messagingSenderId: '242215483285',
              projectId: 'food-61e0d'))
      : await Firebase.initializeApp();
  User? user=FirebaseAuth.instance.currentUser;
  String route;
  if(user !=null){
    route=Approutes.main;
  }
  else{
    route=Approutes.login;
  }
  runApp(MyApp(route: route,));
}

class MyApp extends StatelessWidget {
   MyApp({super.key, required this.route});
  String route;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 930),
      builder: (context, child) => MaterialApp(
        home: child,
        initialRoute: route,
        onGenerateRoute: RouteManger.getRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
