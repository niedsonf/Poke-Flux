import 'package:flutter/material.dart';
import 'package:flux/modules/home/home.dart';
import 'package:flux/modules/login/login.dart';
import 'package:flux/modules/splashscreen/splashscreen.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}