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
      child: uiItems(),
    );
  }

  Widget uiItems() {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          inputTextBox(),
          translateRow(),
          outputTextBox(),
        ],
      ),
    );
  }

  Widget inputTextBox() {
    return Expanded(
      flex: 6,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Color(0xff00d2ff),
          ),
        ),
        padding: EdgeInsets.all(15),
        child: inputTextField(),
      ),
    );
  }

  Widget inputTextField() {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter text to translate...',
        hintStyle: TextStyle(
          color: Color(0xff00d2ff),
        ),
      ),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      style: TextStyle(
        fontSize: 28,
        color: Color(0xff00d2ff),
      ),
    );
  }

  Widget outputTextBox() {
    return Expanded(
      flex: 6,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Color(0xfffffc00),
          ),
        ),
        padding: EdgeInsets.all(15),
        child: Text(
          'In here, the output goes...',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xfffffc00),
            fontSize: 28,
          ),
        ),
      ),
    );
  }

  Widget translateRow() {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        children: <Widget>[
          yoda(),
          translateButton(),
        ],
      ),
    );
  }

  Widget yoda() {
    return Expanded(
      flex: 3,
      child: Image.asset('assets/yoda.png'),
    );
  }

  Widget translateButton() {
    return Expanded(
      flex: 7,
      child: GestureDetector(
        onTap: () {
          print('Translate!');
        },
        child: Image.asset('assets/translate.png'),
      ),
    );
  }
}
