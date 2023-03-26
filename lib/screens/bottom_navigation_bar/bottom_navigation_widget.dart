import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/controller/bottom_navigation_controller.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:provider/provider.dart';

class BottomnavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationcontroller =
        Provider.of<BottomNavigationController>(context, listen: false);
    BottomNavigationBarItem getNavigationBarItem(
        {required String label, required String iconPath, required int index}) {
      Color iconColor = index == bottomNavigationcontroller.initialIndex
          ? AppColors.primaryColor
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
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: Offset(0, -12),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
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
              selectedItemColor: AppColors.primaryColor,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
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
