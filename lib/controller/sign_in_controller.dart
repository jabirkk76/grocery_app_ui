import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_navigation_widget.dart';

import '../screens/sign_up_screen/sign_up_screen.dart';

class SignInController extends ChangeNotifier {
  navigateToSignUp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }

  void navigateToBottomNavWidget(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BottomnavigationWidget(),
      ),
    );
  }
}
