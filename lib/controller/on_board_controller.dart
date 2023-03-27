// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:moonlight/screens/sign_in_screen/sign_in_screen.dart';

class OnBoardController with ChangeNotifier {
  navigateToSignInScreen(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
      ),
    );
  }
}
