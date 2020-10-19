import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoda_translator/src/services/translator_service.dart';
import 'src/app.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TranslatorService(),
      child: App(),
    ),
  );
}
