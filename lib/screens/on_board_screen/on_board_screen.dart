import 'package:flutter/material.dart';
import 'package:grocery_app/controller/on_board_controller.dart';
import 'package:grocery_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnBoardController>(
        builder: (context, value, child) => Stack(
          children: [
            PageView.builder(
              controller: value.pageController,
              onPageChanged: (int index) {
                value.changeIndex(index);
              },
              itemCount: value.images.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(value.images[index].image),
                          fit: BoxFit.fill)),
                  height: double.infinity,
                );
              },
            ),
            Positioned(
              right: 5,
              bottom: 5,
              child: SizedBox(
                width: 120,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: AppColor.primaryColor),
                    onPressed: () {
                      if (value.currentIndex == value.images.length - 1) {
                        value.navigateToBottomnavWidget(context);
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ));
                      }
                    },
                    child: Text(value.currentIndex == value.images.length - 1
                        ? 'Continue'
                        : 'Skip')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
