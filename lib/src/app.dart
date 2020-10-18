import 'package:flutter/material.dart';
import 'package:yoda_translator/src/screens/home.dart';
import 'package:yoda_translator/src/screens/settings.dart';

class App extends StatelessWidget {
  Widget build(context) {
    // Main widget that provides basic functions needed for the app to run.
    return MaterialApp(
        title: 'Yoda Translator',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routes,
    );
  }

  MaterialPageRoute screenRoute({String name, Widget child}) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
      settings: RouteSettings(
        name: name,
      ),
    );
  }

  Route routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return screenRoute(
          name: '/',
          child: Home(),
        );
        break;

      case '/settings':
        return screenRoute(
          name: '/settings',
          child: Settings(),
        );
        break;

      default:
        return screenRoute(
          name: '/',
          child: Home(),
        );
    }
  }
}