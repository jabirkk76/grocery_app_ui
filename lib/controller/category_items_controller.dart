import 'package:flutter/material.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/screens/filter_screen/filter_screen.dart';

import '../screens/product_details_screen/product_details_screen.dart';

class CategoryItemsController with ChangeNotifier {
  void onItemClicked(BuildContext context, GroceryItemModel groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }

  void navigateToFilter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => FilterScreen(),
    ));
  }

  void navigateToPrevious(BuildContext context) {
    Navigator.pop(context);
  }
}
