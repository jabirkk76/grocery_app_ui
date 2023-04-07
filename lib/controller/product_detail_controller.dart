// ignore_for_file: prefer_interpolation_to_compose_strings, unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class ProductDetailController with ChangeNotifier {
  bool isNear = false;

  void checkUserDistanceFromPoint() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    double userLatitude = position.latitude;
    double userLongitude = position.longitude;

    double distanceInMeters = Geolocator.distanceBetween(
      userLatitude,
      userLongitude,
      23.652,
      72.88683,
    );
    notifyListeners();
    if (distanceInMeters < 5000) {
      isNear = true;
    }
    print(distanceInMeters);
    if (isNear == true) {
      print('nearby');
    } else {
      print('far from');
    }
    notifyListeners();
  }

  int amount = 1;
  incrementAmount() {
    if (amount < 10) {
      amount = amount + 1;
      notifyListeners();
    }
  }

  decrementAmount() {
    amount = amount - 1;
    notifyListeners();
  }
}
