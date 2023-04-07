// ignore_for_file: non_constant_identifier_names, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/language_helper.dart';

class LocalizationController with ChangeNotifier {
  String InitialLanguage = 'English';
  List<String> languages = [
    'English',
    'Malayalam',
    'Hindi',
    'Tamil',
    'Gujarati'
  ];

  Locale initialLanguageCode = const Locale('en');

  LanguageHelper languageHelper = LanguageHelper();

  void changeLanguage(newLanguage, context) {
    print(newLanguage);

    Locale convertedLanguage;

    InitialLanguage = newLanguage;
    notifyListeners();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.green,
        content: Text('Your language has been changed')));
    convertedLanguage = languageHelper.nameToLocale(newLanguage);
    initialLanguageCode = convertedLanguage;
    notifyListeners();
  }

  defineCurrentLanguage(context) {
    String definedCurrentLanguage;

    if (InitialLanguage != null) {
      definedCurrentLanguage = InitialLanguage;
    } else {
      print(
          "locale from currentData: ${Localizations.localeOf(context).toString()}");
      definedCurrentLanguage = languageHelper
          .localeToName(Localizations.localeOf(context).toString());
    }

    return definedCurrentLanguage;
  }
}
