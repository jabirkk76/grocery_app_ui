import 'package:flutter/material.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/controller/bottom_navigation_controller.dart';
import 'package:grocery_app/controller/cart_controller.dart';
import 'package:grocery_app/controller/category_items_controller.dart';
import 'package:grocery_app/controller/explore_screen_controller.dart';
import 'package:grocery_app/controller/filter_controller.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/controller/item_controller.dart';
import 'package:grocery_app/controller/language_controller.dart';
import 'package:grocery_app/controller/on_board_controller.dart';
import 'package:grocery_app/controller/product_detail_controller.dart';
import 'package:grocery_app/controller/sign_in_controller.dart';
import 'package:grocery_app/controller/sign_up_controller.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';

import 'screens/sign_in_screen/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LanguageController currentData = LanguageController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => currentData,
      child: Consumer<LanguageController>(
        builder: (context, value, child) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => currentData),
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
            home: SignInScreen(),
            locale:
                Provider.of<LanguageController>(context).initialLanguageCode,
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('ml'),
              Locale('hi'),
              Locale('ta'),
            ],
          ),
        ),
      ),
    );
  }
}
