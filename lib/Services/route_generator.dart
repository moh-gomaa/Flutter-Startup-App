import 'package:startup_app/Models/data_change_lang.dart';
import 'package:startup_app/Screens/Intro.dart';
import 'package:startup_app/Screens/getStart.dart';
import 'package:startup_app/Screens/langugeMain.dart';
import 'package:startup_app/Screens/login.dart';
import 'package:startup_app/Screens/onboarding.dart';
import 'package:startup_app/Screens/signup.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final eventInfo = settings.arguments;
    final lang = settings.arguments;
    final _moreIndex = settings.arguments;
    switch (settings.name) {
      //*Nav Bar * ----------------------------------------------

      case '/':
        return MaterialPageRoute(builder: (_) => LogIn());

      case '/lang':
        return MaterialPageRoute(builder: (_) => LangugeMain());
      case '/onBoarding':
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case '/getStart':
        return MaterialPageRoute(builder: (_) => GetStart());
      case '/login':
        return MaterialPageRoute(builder: (_) => LogIn());
    case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp());

      case '/intro':
        if (args is Data) {
          return MaterialPageRoute(builder: (_) => Intro(args));
        }

        return _errorRoute();
      default:
        return MaterialPageRoute(builder: (_) => LogIn());
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error '),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
