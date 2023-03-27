import 'package:flutter/material.dart';

class LanguageHelper {
  nameToLocale(String langNameToConvert) {
    Locale convertedLocale;

    switch (langNameToConvert) {
      case 'English':
        convertedLocale = Locale('en', 'EN');
        break;
      case 'Malayalam':
        convertedLocale = Locale('ml', 'ML');
        break;
      case 'Hindi':
        convertedLocale = Locale('hi', 'HI');
        break;
      case 'Tamil':
        convertedLocale = Locale('ta', 'TA');
        break;
      default:
        convertedLocale = Locale('en', 'EN');
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
      default:
        langName = "Malayalam";
    }

    return langName;
  }
}
