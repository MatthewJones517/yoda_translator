import 'package:flutter/material.dart';
import 'package:yoda_translator/src/screens/home.dart';

class App extends StatelessWidget {
  Widget build(context) {
    // Main widget that provides basic functions needed for the app to run.
    return MaterialApp(
      title: 'Yoda Translator',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}