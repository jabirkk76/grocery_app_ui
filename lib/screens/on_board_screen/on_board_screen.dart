import 'package:flutter/material.dart';
import 'package:moonlight/controller/on_board_controller.dart';
import 'package:moonlight/helpers/app_sizes.dart';


import 'package:provider/provider.dart';

import '../../common_widgets/custom_button_widget.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final onBoardController =
        Provider.of<OnBoardController>(context, listen: false);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            Image.asset('assets/images/8140 1.png'),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Welcome ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'to our store',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600),
                  ),
                  AppSizes.szdh20,
                  const Text(
                    'Get your groceries in as fast as one hour',
                    style: TextStyle(
                      color: Color(0xFFFCFCFC),
                    ),
                  ),
                  AppSizes.szdh74,
                  CustomButtonWidget(
                    onTap: () {
                      onBoardController.navigateToSignInScreen(context);
                    },
                    text: 'Get Started',
                  ),
                  AppSizes.szdh90
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
