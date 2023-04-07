// ignore_for_file: prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ImageHeaderWidget extends StatelessWidget {
  const ImageHeaderWidget(
      {Key? key, required this.groceryItem, required this.heroSuffix})
      : super(key: key);
  final groceryItem;
  final heroSuffix;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF).withOpacity(0.1),
              const Color(0xFF3366FF).withOpacity(0.09),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Hero(
        tag: "GroceryItem:" + groceryItem.name + "-" + (heroSuffix ?? ""),
        child: Image(
          image: AssetImage(groceryItem.imagePath),
        ),
      ),
    );
  }
}
