import 'package:flutter/material.dart';
import 'package:my_routing/screens/homepage.dart';
import 'package:my_routing/screens/screen1.dart';
import 'package:my_routing/screens/screen2.dart';
import 'package:my_routing/screens/screen3.dart';
import 'package:my_routing/screens/screen4.dart';
import 'package:my_routing/screens/screen5.dart';

class MyRoutes {
  static const String homePage = '/';
  static const String screen1 = '/screen1';
  static const String screen2 = '/screen2';
  static const String screen3 = '/screen3';
  static const String screen4 = '/screen4';
  static const String screen5 = '/screen5';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valePassed;
    if (settings.arguments != null) {
      valePassed = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case screen1:
        return MaterialPageRoute(
          builder: (context) => const Screen1(),
        );
      case screen2:
        return MaterialPageRoute(
          builder: (context) => const Screen2(),
        );
      case screen3:
        return MaterialPageRoute(
          builder: (context) => const Screen3(),
        );
      case screen4:
        return MaterialPageRoute(
          builder: (context) => const Screen4(),
        );
      case screen5:
        return MaterialPageRoute(
          builder: (context) => Screen5(
            name: valePassed["name"],
          ),
        );
      default:
        throw const FormatException('Route Not Available check routes');
    }
  }
}
