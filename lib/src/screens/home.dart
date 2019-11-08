import 'package:flutter/material.dart';
import '../blocs/provider.dart';
import '../widgets/custom_scaffold.dart';

class Home extends StatelessWidget {
  Widget build(context) {
    final Bloc bloc = Provider.of(context);

    return CustomScaffold(
      appBarTitle: 'Yoda Translator',
      child: screenContent(bloc),
    );
  }

  Widget screenContent(Bloc bloc) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: uiItems(bloc),
    );
  }

  Widget uiItems(Bloc bloc) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          inputTextBox(bloc),
          translateRow(bloc),
          outputTextBox(bloc),
        ],
      ),
    );
  }

  Widget inputTextBox(Bloc bloc) {
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
        child: inputTextField(bloc),
      ),
    );
  }

  Widget inputTextField(Bloc bloc) {
    return TextField(
      onChanged: bloc.userInputSink,
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

  Widget outputTextBox(Bloc bloc) {
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
        child: StreamBuilder(
          stream: bloc.translationOutput,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (!snapshot.hasData) {
              return outputText("In here, the output goes...");
            }

            return outputText(snapshot.data);
          },
        ),
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

  Widget translateRow(Bloc bloc) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        children: <Widget>[
          yoda(),
          translateButton(bloc),
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

  Widget translateButton(Bloc bloc) {
    return Expanded(
      flex: 7,
      child: GestureDetector(
        onTap: () {
          bloc.translate();
        },
        child: Image.asset('assets/translate.png'),
      ),
    );
  }
}
