import 'package:flutter/material.dart';

class LanguageScreenController with ChangeNotifier {
  String userSelectedRadio = 'English';
  void changeRadio(value) {
    userSelectedRadio = value;
    notifyListeners();
  }
}
