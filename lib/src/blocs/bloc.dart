import 'package:rxdart/rxdart.dart';
import '../models/translation_model.dart';
import '../resources/repository.dart';

class Bloc {
  // Instantiate Repository
  final Repository repository = Repository();

  // Set up stream for translation text
  final BehaviorSubject<String> _userInput = BehaviorSubject<String>();

  // Set up stream getters
  Observable<String> get userInput => _userInput.stream;
  Function(String) get userInputSink => _userInput.sink.add;

  void translate() async {
    final String input = _userInput.value;
    print("Text to Translate: $input\n\n");
    final TranslationModel translation = await repository.callAPI(input);
    print("Translation: ${translation.translated}");
  }

  dispose() {
    _userInput.close();
  }
}
