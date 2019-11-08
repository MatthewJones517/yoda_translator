import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  Widget build(context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: SafeArea(
            child: Column(
          children: <Widget>[
            menuItem(context, 'HOME', '/home'),
            menuItem(context, 'SETTINGS', '/settings'),
          ],
        )),
      ),
    );
  }

  Widget menuItem(BuildContext context, String label, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 42,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
