import 'package:flutter/material.dart';
import 'package:snacks_app/home/page/home_screen.dart';
import 'package:snacks_app/splash/splash_screen.dart';

class Routes {
  static Route generate(RouteSettings settings) {
    final route = settings.name;
    late Widget child;

    switch (route) {
      case HomeScreen.routeName: child = const HomeScreen();
      default: child = const SplashScreen();
    }

    return MaterialPageRoute(builder: (_) => child);
  }
}