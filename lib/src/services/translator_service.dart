import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:flutter/foundation.dart';
import 'package:yoda_translator/src/models/translation_model.dart';

class TranslatorService extends ChangeNotifier {
  // Create an empty translation model as the default state.
  TranslationModel _translationModel = TranslationModel(); 

  // Set up a getter to expose _translationModel since it's internal.
  TranslationModel get translationModel => _translationModel;

  // This method takes in the english sentence, pings the API, and returns the Yodish sentence. 
  void translate(String stringToBeTranslated) async {
    // Set empty translation model 
    _translationModel = TranslationModel();
    
    // API Base URL
    final String root = "https://yodish.p.rapidapi.com/yoda.json?text=";

    // Build & encode URL
    final String url = Uri.encodeFull("$root$stringToBeTranslated");

    // Create a new client object which will ultimately make our request
    Client client = Client();

    // Set Up Headers
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "x-rapidapi-host": "yodish.p.rapidapi.com",
      "x-rapidapi-key": "22f4edda2amshe3183f60ad0df3bp13dc9fjsn026d79530589",
    };

    // Make API Request
    var response = await client.post(url, headers: headers);

    // Parse the JSON
    Map<String, dynamic> parsedJson = json.decode(response.body); 

    // Create new TranslationModel
    _translationModel = TranslationModel.fromJSON(parsedJson);

    // Notify any consumers listening to this service that the translation model has been updated. 
    notifyListeners();
  }
}