import 'package:flutter/material.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/controller/bottom_navigation_controller.dart';
import 'package:grocery_app/controller/cart_controller.dart';
import 'package:grocery_app/controller/category_items_controller.dart';
import 'package:grocery_app/controller/explore_screen_controller.dart';
import 'package:grocery_app/controller/filter_controller.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/controller/item_controller.dart';
import 'package:grocery_app/controller/on_board_controller.dart';
import 'package:grocery_app/controller/product_detail_controller.dart';
import 'package:grocery_app/controller/sign_in_controller.dart';
import 'package:grocery_app/controller/sign_up_controller.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_navigation_widget.dart';
import 'package:grocery_app/screens/splash_screen/splash_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
        ChangeNotifierProvider(
          create: (context) => OnBoardController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignInController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ExploreScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ItemController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FilterController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryItemsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AccountScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductDetailController(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          debugShowCheckedModeBanner: false,
          home: BottomnavigationWidget()),
    );
  }
}
