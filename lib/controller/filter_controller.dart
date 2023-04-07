// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FilterController with ChangeNotifier {
  List<String> categories = [
    "Eggs",
    "Noodles & Pasta",
    'Chips & Crisps',
    "Fast Food",
  ];
  List<String> brandList = [
    "Individual Collection",
    'Cocacola',
    'Ifad',
    'Kazi Formas'
  ];
  List<bool> categoryBoolList = [false, false, false, false];
  List<bool> brandBoolList = [false, false, false, false];
  void changeCategoryIndex(int index) {
    categoryBoolList[index] = !categoryBoolList[index];
    notifyListeners();
  }

  void changeBrandIndex(int index) {
    brandBoolList[index] = !brandBoolList[index];
    notifyListeners();
  }

  void navigateToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
