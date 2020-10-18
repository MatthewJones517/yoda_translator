class TranslationModel {
  final String translation;
  final String text;
  final String translated;

  TranslationModel()
    : translation = "",
      text = "",
      translated = "In here, the translation goes";

  TranslationModel.fromJSON(Map<String, dynamic> parsedJson)
      : translation = parsedJson['contents']['translation'],
        text = parsedJson['contents']['text'],
        translated = parsedJson['contents']['translated'];
}