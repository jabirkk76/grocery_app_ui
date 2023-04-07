import 'package:flutter/material.dart';

import '../screens/explore_screen/widget/order_failed_dialog.dart';

class CartController with ChangeNotifier {
  void onPlaceOrderClicked(context) {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return OrderFailedDialogue();
        });
  }

  void navigateToPrevious(BuildContext context) {
    Navigator.pop(context);
  }
}
