import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/language_helper.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_navigation_widget.dart';
import 'package:grocery_app/screens/sign_up_screen/sign_up_screen.dart';

import '../screens/sign_in_screen/sign_in_screen.dart';
import '../screens/terms_and_conditions/terms_and_conditions_screen.dart';

class AuthController with ChangeNotifier {
  bool isLoading = false;
  final TextEditingController phoneController = TextEditingController();

  Locale initialLanguageCode = const Locale('en');

  LanguageHelper languageHelper = LanguageHelper();

  navigateToSignUp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  void navigateToBottomNavWidget(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BottomnavigationWidget(),
      ),
    );
    isLoading = false;
    notifyListeners();
  }

  navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  navigateToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateTermsAndConditions(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const TermsAndConditionsScreen(),
    ));
  }
}
