import 'package:chats_app_firebase/screens/login_screen.dart';
import 'package:chats_app_firebase/screens/sign_up_screen.dart';
import 'package:chats_app_firebase/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'welcome':
        return MaterialPageRoute(
          builder: (_) => WelcomeScreen(),
        );
      case 'login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case 'sign_up':
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
