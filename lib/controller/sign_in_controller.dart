import 'package:flutter/material.dart';
import 'package:moonlight/helpers/language_helper.dart';

import '../screens/bottom_navigation_bar/bottom_navigation_widget.dart';
import '../screens/sign_up_screen/sign_up_screen.dart';

class SignInController extends ChangeNotifier {
  Locale initialLanguageCode = const Locale('en');

  LanguageHelper languageHelper = LanguageHelper();

  navigateToSignUp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
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
