import 'package:flutter/material.dart';
import 'package:grocery_app/screens/sign_in_screen/sign_in_screen.dart';

class SignUpController extends ChangeNotifier {
  navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
      ),
    );
  }

  navigateToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
