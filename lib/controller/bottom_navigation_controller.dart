import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/navigator_items.dart';
import 'package:grocery_app/screens/account/account_screen.dart';
import 'package:grocery_app/screens/explore_screen/explore_screen.dart';
import 'package:grocery_app/screens/favorites_screen/favourite_screen.dart';

import 'package:grocery_app/screens/home/home_screen.dart';

import '../screens/cart/cart_screen.dart';

class BottomNavigationController with ChangeNotifier {
  List<NavigatorItem> navigatorItems = [
    NavigatorItem(
      "Shop",
      "assets/icons/shop_icon.svg",
      0,
      HomeScreen(),
    ),
    NavigatorItem(
      "Explore",
      "assets/icons/explore_icon.svg",
      1,
      ExploreScreen(),
    ),
    NavigatorItem(
      "Cart",
      "assets/icons/cart_icon.svg",
      2,
      CartScreen(),
    ),
    NavigatorItem(
      "Favourite",
      "assets/icons/favourite_icon.svg",
      3,
      FavouriteScreen(),
    ),
    NavigatorItem(
      "Account",
      "assets/icons/account_icon.svg",
      4,
      AccountScreen(),
    ),
  ];
  int initialIndex = 0;

  void changeIndex(int newIndexes) {
    initialIndex = newIndexes;
    notifyListeners();
  }
}
