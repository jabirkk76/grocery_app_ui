// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/controller/auth_controller.dart';
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
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/screens/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'screens/bottom_navigation_bar/bottom_navigation_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LanguageController currentData = LanguageController();
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle( systemNavigationBarColor: AppColor.primaryColor, // navigation bar color statusBarColor: Colors.pink, // status bar color ));
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
            ChangeNotifierProvider(
              create: (context) => AuthController(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
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
              Locale('gu')
            ],
          ),
        ),
      ),
    );
  }
}
