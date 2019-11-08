class TranslationModel {
  final String translation;
  final String text;
  final String translated;

  TranslationModel.fromJSON(Map<String, dynamic> parsedJson)
      : translation = parsedJson['contents']['translation'],
        text = parsedJson['contents']['text'],
        translated = parsedJson['contents']['translated'];
}
