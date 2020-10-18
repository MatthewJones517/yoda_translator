import 'package:flutter/material.dart';
import '../widgets/custom_scaffold.dart';

class Settings extends StatelessWidget {
  Widget build(context) {
    return CustomScaffold(
      appBarTitle: 'Settings',
      child: screenContent(context),
    );
  }

  Widget screenContent(BuildContext context) {
    return Text(
      'If this app had any settings, they would go here...',
      style: TextStyle(fontSize: 32),
    );
  }
}