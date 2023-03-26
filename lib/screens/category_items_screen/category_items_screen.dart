import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/category_items_controller.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';
import 'package:provider/provider.dart';

class CategoryItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryItemController =
        Provider.of<CategoryItemsController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            categoryItemController.navigateToPrevious(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              categoryItemController.navigateToFilter(context);
            },
            child: Container(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "Beverages",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: beverages.asMap().entries.map<Widget>((e) {
            GroceryItemModel groceryItem = e.value;
            return GestureDetector(
              onTap: () {
                categoryItemController.onItemClicked(context, groceryItem);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: GroceryItemCardWidget(
                  item: groceryItem,
                ),
              ),
            );
          }).toList(),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 0.0,
        ),
      ),
    );
  }
}
