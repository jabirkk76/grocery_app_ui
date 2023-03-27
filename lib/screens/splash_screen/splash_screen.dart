import 'package:flutter/material.dart';
import 'package:moonlight/controller/splash_controller.dart';
import 'package:moonlight/helpers/app_colors.dart';

import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

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
      backgroundColor: AppColors.splashColor,
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
