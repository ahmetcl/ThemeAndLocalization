// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "hi_text": "Hallo, ich bin Ahmet",
  "this_should_be_translated": "Dies sollte ins Englische übersetzt werden"
};
static const Map<String,dynamic> en = {
  "hi_text": "Hi, I am Ahmet",
  "this_should_be_translated": "This should be translated to Turkish"
};
static const Map<String,dynamic> tr = {
  "hi_text": "Merhaba, Ben Ahmet",
  "this_should_be_translated": "Bu İngilizceden çevirildi"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "en": en, "tr": tr};
}
