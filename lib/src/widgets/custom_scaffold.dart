import 'package:flutter/material.dart';
import 'menu_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget child;

  CustomScaffold({@required this.appBarTitle, @required this.child});

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MenuDrawer(),
      resizeToAvoidBottomPadding: false,
      body: child,
    );
  }
}
