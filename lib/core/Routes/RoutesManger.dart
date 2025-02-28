import 'package:flutter/material.dart';
import 'package:food/core/Routes/AppRoutes.dart';
import 'package:food/data/Model/Categoreis.dart';
import 'package:food/ui/auth/Login/LoginScreen.dart';
import 'package:food/ui/auth/Signup/SignUpScreen.dart';
import 'package:food/ui/details/details.dart';
import 'package:food/ui/home/Home.dart';
import 'package:food/ui/main/mainLayout.dart';
import 'package:food/ui/onboarding/onboarding.dart';
import 'package:food/ui/person/PersonScreen.dart';

class RouteManger {
  static Route<dynamic>? getRoute(RouteSettings route) {
    switch (route.name) {
      case Approutes.login:
        return MaterialPageRoute(builder: (_) => Loginscreen());
      case Approutes.signup:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Approutes.main:
        return MaterialPageRoute(builder: (_) => Mainlayout());
      case Approutes.home:
        return MaterialPageRoute(builder: (_) => HomeSCreen());
        case Approutes.person:
      return MaterialPageRoute(builder: (_) => Personscreen());
      case Approutes.details:
        var product = route.arguments as ProductModel;
        return MaterialPageRoute(
            builder: (_) => DetailsScreen(
                  product: product,
                ));
      case Approutes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      default:
        return null;
    }
  }
}
