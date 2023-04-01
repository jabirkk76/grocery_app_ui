import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/account_screen.dart';
import 'package:grocery_app/screens/favorites_screen/favourite_screen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/explore_screen/explore_screen.dart';

class BottomNavigationController with ChangeNotifier {
  List pages = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen()
  ];
  int initialIndex = 0;

  void changeIndex(int newIndexes) {
    initialIndex = newIndexes;
    notifyListeners();
  }
}
