// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moonlight/controller/bottom_navigation_controller.dart';
import 'package:moonlight/styles/colors.dart';

import 'package:provider/provider.dart';

class BottomnavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationcontroller =
        Provider.of<BottomNavigationController>(context, listen: false);
    BottomNavigationBarItem getNavigationBarItem(
        {required String label, required String iconPath, required int index}) {
      Color iconColor = index == bottomNavigationcontroller.initialIndex
          ? AppColor.primaryColor
          : Colors.black;
      return BottomNavigationBarItem(
        label: label,
        icon: SvgPicture.asset(
          iconPath,
          color: iconColor,
        ),
      );
    }

    return Consumer<BottomNavigationController>(
      builder: (context, value, child) => Scaffold(
        body: value
            .navigatorItems[bottomNavigationcontroller.initialIndex].screen,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: const Offset(0, -12),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: bottomNavigationcontroller.initialIndex,
              onTap: (changeIndex) {
                value.changeIndex(changeIndex);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.primaryColor,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w600),
              unselectedItemColor: Colors.black,
              items: value.navigatorItems.map((e) {
                return getNavigationBarItem(
                    label: e.label, index: e.index, iconPath: e.iconPath);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
