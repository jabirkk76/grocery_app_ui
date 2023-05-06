import 'package:flutter/material.dart';
import 'package:grocery_app/screens/enter_new_password_screen/enter_new_password_screen.dart';

class VerifyEmailController with ChangeNotifier {
  void navigateNewPasswordScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EnterNewPasswordScreen(),
    ));
  }
}
