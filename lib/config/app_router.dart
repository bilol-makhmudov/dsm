import 'package:dsm/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case MatchesScreen.routeName:
        return MatchesScreen.route();

      case UserScreen.routeName:
        return UserScreen.route();

      case ChatScreen.routeName:
        return ChatScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("Error: 404 page doesn't exist."),
              ),
            ),
        settings: RouteSettings(name: "/error"));
  }
}
