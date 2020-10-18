import 'package:flutter/material.dart';
import 'package:yoda_translator/src/widgets/custom_scaffold.dart';
import 'package:yoda_translator/src/widgets/menu_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: "Yoda Translator",
      child: screenContent(context),
    );
  }

  Widget screenContent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(),
    );
  }
}
