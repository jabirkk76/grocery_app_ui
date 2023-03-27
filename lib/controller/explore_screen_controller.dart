import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:moonlight/common_widgets/app_text.dart';
import 'package:moonlight/helpers/app_localization.dart';
import 'package:moonlight/models/category_model.dart';
import 'package:moonlight/screens/category_items_screen/category_items_screen.dart';
import 'package:moonlight/screens/items__screen/items_screen.dart';
import 'package:moonlight/widgets/category_item_card_widget.dart';

import '../widgets/search_bar_widget.dart';

class ExploreScreenController with ChangeNotifier {
  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xff836AF6),
    const Color(0xffD73B77),
  ];
  List<CategoryItem> items(context) {
    var categoryItemsDemo = [
      CategoryItem(
        name:
            AppLocalization.of(context)!.translate("Fresh Fruits & Vegetables"),
        imagePath: "assets/images/categories_images/fruit.png",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate("Cooking Oil"),
        imagePath: "assets/images/categories_images/oil.png",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Meat & Fish'),
        imagePath: "assets/images/categories_images/meat.png",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Bakery & Snacks'),
        imagePath: "assets/images/categories_images/bakery.png",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Dairy & Eggs'),
        imagePath: "assets/images/categories_images/dairy.png",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Beverages'),
        imagePath: "assets/images/categories_images/beverages.png",
      ),
    ];
    return categoryItemsDemo;
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  void navigateToItemScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ItemsScreen(),
      ),
    );
  }

  Widget getHeader(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: AppLocalization.of(context)!.translate('Find Products'),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        padded(
          const SearchBarWidget(),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget getStaggeredGridView(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 4.0,
        children: items(context).asMap().entries.map<Widget>((e) {
          int index = e.key;
          CategoryItem categoryItem = e.value;
          return GestureDetector(
            onTap: () {
              onCategoryItemClicked(context, categoryItem);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: CategoryItemCardWidget(
                item: categoryItem,
                color: gridColors[index % gridColors.length],
              ),
            ),
          );
        }).toList(), // add some space
      ),
    );
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return CategoryItemsScreen();
        },
      ),
    );
  }
}
