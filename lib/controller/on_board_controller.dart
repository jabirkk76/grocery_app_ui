import 'package:flutter/material.dart';
import 'package:grocery_app/screens/sign_in_screen/sign_in_screen.dart';

class OnBoardController with ChangeNotifier {
  navigateToSignInScreen(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }
}
