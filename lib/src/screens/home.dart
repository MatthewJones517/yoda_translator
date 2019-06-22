import 'package:flutter/material.dart';

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
      body: screenContent(context),
    );
  }

  Widget screenContent(BuildContext context) {
    return Text('Hellow From a Galaxy Far, Far, Away!!!');
  }
}
