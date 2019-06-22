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
    return Text(
      'Hello From a Galaxy Far, Far, Away!!!',
      style: TextStyle(fontSize: 32),
    );
  }
}
