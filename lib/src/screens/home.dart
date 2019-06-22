import 'package:flutter/material.dart';
import '../widgets/menu_drawer.dart';

class Home extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yoda Translator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MenuDrawer(),
      body: screenContent(context),
    );
  }

  Widget screenContent(BuildContext context) {
    return Text(
      'Hello From a Galaxy Far, Far, Away!!!',
      style: TextStyle(fontSize: 32),
    );
  }
}
