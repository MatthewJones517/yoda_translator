import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    // Main widget that provides basic functions needed for the app to run.
    return MaterialApp(
      title: 'Yoda Translator',
      debugShowCheckedModeBanner: false,
      home: Text('This is an app!'),
    );
  }
}