import 'package:flutter/material.dart';
import '../widgets/custom_scaffold.dart';

class Home extends StatelessWidget {
  Widget build(context) {
    return CustomScaffold(
      appBarTitle: 'Yoda Translator',
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
    );
  }
}
