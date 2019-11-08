import 'package:rxdart/rxdart.dart';

class Bloc {
  // Set up stream for translation text
  final BehaviorSubject<String> _userInput = BehaviorSubject<String>();

  // Set up stream getters
  Observable<String> get userInput => _userInput.stream;
  Function(String) get userInputSink => _userInput.sink.add;

  void translate() {
    print("Text to Translate: ${_userInput.value}");
  }

  dispose() {
    _userInput.close();
  }
}
