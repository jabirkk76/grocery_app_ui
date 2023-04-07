// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/controller/item_controller.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';


import 'package:provider/provider.dart';

import '../../models/grocery_model.dart';

class ItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemController = Provider.of<ItemController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                itemController.navigateToPreviousScreen(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              onPressed: () {
                itemController.navigateToFilterScreen(context);
              },
              icon: const Icon(
                Icons.sort,
                color: Colors.black,
              ),
            )
          ],
          title: const Text(
            'Beverages',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 0.0,

          children: beverages.asMap().entries.map<Widget>((e) {
            GroceryItemModel groceryItem = e.value;
            return GestureDetector(
              onTap: () {
                itemController.navigateToProductDetail(context, groceryItem);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: GroceryItemCardWidget(
                  item: groceryItem,
                ),
              ),
            );
          }).toList(), // add some space
        ),
      ),
    );
  }
}
