import 'package:flutter/material.dart';
import 'package:painter/Screens/emojes.dart';
import 'package:painter/Screens/flag.dart';
import 'package:painter/Screens/snowman.dart';
import 'package:painter/Screens/test.dart';
import 'package:painter/home_page.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;
  RouteGenerator._init();

  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (conte) => HomePage());
      case '/emoji':
        return MaterialPageRoute(builder: (conte) => Emoji());
      case '/flag':
        return MaterialPageRoute(builder: (conte) => Flag());
      case '/snowman':
        return MaterialPageRoute(builder: (conte) => SnowMan());
      case '/test':
        return MaterialPageRoute(builder: (conte) => Test());
    }
    return null;
  }

  navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}