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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    'bestie',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                'online groceriet',
                style: TextStyle(
                    color: Color.fromARGB(255, 247, 243, 243), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
