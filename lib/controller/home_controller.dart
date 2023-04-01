import 'package:flutter/material.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/screens/home/widget/home_banner_widget.dart';
import 'package:grocery_app/screens/product_details_screen/product_details_screen.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';

import '../styles/colors.dart';

class HomeController with ChangeNotifier {
  List<HomeBannerWidget> sliderImage = [
    HomeBannerWidget(),
    HomeBannerWidget(),
    HomeBannerWidget()
  ];
  Widget padded(Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItemModel> items) {
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
              onItemClicked(context, items[index]);
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

  void onItemClicked(BuildContext context, GroceryItemModel groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "home_screen",
        ),
      ),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Text(
          "See All",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor),
        ),
      ],
    );
  }
}
