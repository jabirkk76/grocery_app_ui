// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/on_board_screen/on_board_screen.dart';

class SplashController with ChangeNotifier {
  navigateToOnBoardScreen(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const OnBoardScreen(),
      ),
    );
  }
}
