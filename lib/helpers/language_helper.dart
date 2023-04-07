import 'package:flutter/material.dart';

class LanguageHelper {
  nameToLocale(String langNameToConvert) {
    Locale convertedLocale;

    switch (langNameToConvert) {
      case 'English':
        convertedLocale = const Locale('en', 'EN');
        break;
      case 'Malayalam':
        convertedLocale = const Locale('ml', 'ML');
        break;
      case 'Hindi':
        convertedLocale = const Locale('hi', 'HI');
        break;
      case 'Tamil':
        convertedLocale = const Locale('ta', 'TA');
        break;
      case 'Gujarati':
        convertedLocale = const Locale('gu', 'GU');
        break;
      default:
        convertedLocale = const Locale('en', 'EN');
    }

    return convertedLocale;
  }

  localeToName(String localeToConvert) {
    String langName;

    switch (localeToConvert) {
      case 'en':
        langName = "English";
        break;
      case 'ml':
        langName = "Malayalam";
        break;
      case 'hi':
        langName = "Hindi";
        break;
      case 'ta':
        langName = "Tamil";
        break;
      case 'gu':
        langName = "Gujarathi";
        break;
      default:
        langName = "Malayalam";
    }

    return langName;
  }
}
