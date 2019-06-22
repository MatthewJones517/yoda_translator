import 'package:flutter/material.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  Widget build(context) {
    // Main widget that provides basic functions needed for the app to run.
    return MaterialApp(
      title: 'TCG Counter',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
