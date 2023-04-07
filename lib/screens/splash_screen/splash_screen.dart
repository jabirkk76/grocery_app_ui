import 'package:flutter/material.dart';
import 'package:grocery_app/controller/splash_controller.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final splashController =
        Provider.of<SplashController>(context, listen: false);
    splashController.navigateToOnBoardScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 68.61,
                width: 267.42,
                child: Image.asset('assets/images/Group 1 .png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
