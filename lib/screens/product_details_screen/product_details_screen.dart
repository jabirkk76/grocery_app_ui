// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/product_detail_controller.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/screens/product_details_screen/widget/nutrition_widget.dart';
import 'package:grocery_app/screens/product_details_screen/widget/rating_widget.dart';
import 'package:grocery_app/widgets/item_counter_widget.dart';

import 'package:provider/provider.dart';

import '../../common_widgets/app_button.dart';
import 'widget/favourite_toggle_icon_widget.dart';
import 'widget/image_header_widget.dart';
import 'widget/product_data_row_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  final GroceryItemModel groceryItem;
  final String? heroSuffix;

  const ProductDetailsScreen(this.groceryItem, {this.heroSuffix});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    final productDetailController =
        Provider.of<ProductDetailController>(context, listen: false)
            .checkUserDistanceFromPoint();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productDetailController =
        Provider.of<ProductDetailController>(context, listen: false);
    double getTotalPrice() {
      return productDetailController.amount * widget.groceryItem.price;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ImageHeaderWidget(
                groceryItem: widget.groceryItem, heroSuffix: widget.heroSuffix),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Consumer<ProductDetailController>(
                  builder: (context, value, child) => Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          widget.groceryItem.name,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          widget.groceryItem.description,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        trailing: FavoriteToggleIcon(),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const ItemCounterWidget(),
                          const Spacer(),
                          Text(
                            "\₹${getTotalPrice().toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Divider(thickness: 1),
                      ProductDataRowWidget(label: 'Product Details'),
                      const Divider(thickness: 1),
                      ProductDataRowWidget(
                          label: "Nutritions",
                          customWidget: const NutritionWidget()),
                      const Divider(thickness: 1),
                      ProductDataRowWidget(
                          label: "Review", customWidget: const RatingWidget()),
                      const Spacer(),
                      const AppButton(
                        label: "Add To Basket",
                      ),
                      const Spacer(),
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
