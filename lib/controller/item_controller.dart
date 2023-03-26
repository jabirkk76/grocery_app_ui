import 'package:flutter/material.dart';
import 'package:grocery_app/screens/filter_screen/filter_screen.dart';
import 'package:grocery_app/screens/product_details_screen/product_details_screen.dart';

class ItemController with ChangeNotifier {
  navigateToFilterScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FilterScreen(),
      ),
    );
  }

  void navigateToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateToProductDetail(BuildContext context, groceryItemModel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItemModel,
        ),
      ),
    );
  }
}
