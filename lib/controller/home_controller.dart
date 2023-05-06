// ignore_for_file: avoid_print, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/screens/home/widget/home_banner_widget.dart';
import 'package:grocery_app/screens/my_details_screen/my_details_screen.dart';
import 'package:grocery_app/screens/product_details_screen/product_details_screen.dart';


import '../screens/search_screen/search_screen.dart';
import '../styles/colors.dart';

class HomeController with ChangeNotifier {
  List<HomeBannerWidget> sliderImage = [
    HomeBannerWidget(),
    HomeBannerWidget(),
    HomeBannerWidget()
  ];

  void onItemClicked(BuildContext context, GroceryItemModel groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "home_screen",
        ),
      ),
    );
  }

  void navigateSearchScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SearchScreen(),
    ));
  }
    void navigateMyDetailScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MyDetailsScreen(),
    ));
  }
}
