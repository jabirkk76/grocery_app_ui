import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/product_detail_controller.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/widgets/item_counter_widget.dart';
import 'package:provider/provider.dart';

import 'widget/favourite_toggle_icon_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  final GroceryItemModel groceryItem;
  final String? heroSuffix;

  const ProductDetailsScreen(this.groceryItem, {this.heroSuffix});

  @override
  Widget build(BuildContext context) {
    final productDetailController =
        Provider.of<ProductDetailController>(context, listen: false);
    double getTotalPrice() {
      return productDetailController.amount * groceryItem.price;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            productDetailController.getImageHeaderWidget(
                groceryItem, heroSuffix),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Consumer<ProductDetailController>(
                  builder: (context, value, child) => Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          groceryItem.name,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          groceryItem.description,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        trailing: FavoriteToggleIcon(),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          ItemCounterWidget(
                            onAmountChanged: (newAmount) {
                              value.changeAmount(newAmount);
                            },
                          ),
                          Spacer(),
                          Text(
                            "\$${getTotalPrice().toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Divider(thickness: 1),
                      productDetailController
                          .getProductDataRowWidget("Product Details"),
                      Divider(thickness: 1),
                      productDetailController.getProductDataRowWidget(
                        "Nutritions",
                        customWidget: productDetailController.nutritionWidget(),
                      ),
                      Divider(thickness: 1),
                      productDetailController.getProductDataRowWidget(
                        "Review",
                        customWidget: productDetailController.ratingWidget(),
                      ),
                      Spacer(),
                      AppButton(
                        label: "Add To Basket",
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
