
import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class GroceryNameWidget extends StatelessWidget {
  const GroceryNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.shopping_cart,
          color: AppColor.primaryColor,
          size: 20,
        ),
        Text(
          'bestie',
          style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
