import 'package:flutter/material.dart';
import 'package:yoda_translator/src/widgets/custom_scaffold.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _inputText = "";

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
      child: uiItems(context),
    );
  }

  Widget uiItems(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          inputTextBox(),
          outputTextBox(context),
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
      onChanged: (String newText) {
        setState(() {
          _inputText = newText;
        });
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter text to translate',
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

  Widget outputTextBox(BuildContext context) {
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
        // Todo - Fix output text content
        child: outputText("In here, the translation goes"),
      ),
    );
  }

  Widget outputText(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Color(0xfffffc00),
        fontSize: 28,
      ),
    );
  }
}
