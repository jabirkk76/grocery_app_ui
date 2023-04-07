import 'package:flutter/material.dart';

class DeliveryAddressController with ChangeNotifier {
  String dropdownvalue = 'Location 3';

  // List of items in our dropdown menu
  var locations = [
    'Location 1',
    'Location 2',
    'Location 3',
    'Location 4',
    'Location 5'
  ];
  void changeValue(newValue) {
    dropdownvalue = newValue;
    notifyListeners();
  }
}
