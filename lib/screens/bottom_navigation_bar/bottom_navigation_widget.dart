// ignore_for_file: use_key_in_widget_constructors

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/controller/bottom_navigation_controller.dart';


import 'package:provider/provider.dart';

class BottomnavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Consumer<BottomNavigationController>(
        builder: (context, value, child) => FloatingNavbar(
          backgroundColor: const Color.fromARGB(255, 93, 55, 100),
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.shopping_cart, title: 'Cart'),
            FloatingNavbarItem(icon: Icons.favorite, title: 'Favourite'),
            FloatingNavbarItem(icon: Icons.person, title: 'Account'),
          ],
          currentIndex: value.initialIndex,
          onTap: (newIndexes) {
            value.changeIndex(newIndexes);
          },
        ),
      ),
      body: Consumer<BottomNavigationController>(
        builder: (context, value, child) => value.pages[value.initialIndex],
      ),
    );
  }
}
