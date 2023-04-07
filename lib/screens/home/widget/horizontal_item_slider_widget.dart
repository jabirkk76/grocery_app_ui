// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';

import 'package:provider/provider.dart';

class HorizontalItemSliderWidget extends StatelessWidget {
  HorizontalItemSliderWidget({Key? key, required this.items}) : super(key: key);
  List<GroceryItemModel> items;
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              homeController.onItemClicked(context, items[index]);
            },
            child: GroceryItemCardWidget(
              item: items[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
