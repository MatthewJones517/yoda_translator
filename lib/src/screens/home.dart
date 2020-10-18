import 'package:flutter/material.dart';
import 'package:yoda_translator/src/widgets/menu_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yoda Translator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MenuDrawer(),
      resizeToAvoidBottomPadding: false,
      body: Text('Home Screen'),
    );
  }
}
