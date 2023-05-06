// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:grocery_app/models/page_view_model.dart';

import '../screens/sign_in_screen/sign_in_screen.dart';

class OnBoardController with ChangeNotifier {
  int currentIndex = 0;
  PageController pageController = PageController();
  List<PageViewModel> images = [
    PageViewModel(image: 'assets/4.webp'),
    PageViewModel(image: 'assets/2.jpeg'),
    PageViewModel(image: 'assets/Best-Buy-Logo-700x394.png')
  ];
  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void navigateToBottomnavWidget(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignInScreen()));
  }
}
