import 'package:flutter/material.dart';
import 'package:grocery_app/screens/edit_my_details_screen/edit_my_details_screen.dart';

class MyDetailController with ChangeNotifier {
  void navigateEditMyDetail(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EditMyDetailsScreen(),
    ));
  }
}
