import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/screens/category_items_screen/category_items_screen.dart';
import 'package:grocery_app/screens/items__screen/items_screen.dart';
import 'package:grocery_app/widgets/category_item_card_widget.dart';

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
        name: AppLocalization.of(context)!.translate("Masala & Premix"),
        imagePath: "assets/images/images.jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Oil & Rice'),
        imagePath: "assets/images/images (1).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Drinks'),
        imagePath: "assets/images/download (1).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Biscuits & Toasts'),
        imagePath: "assets/images/images (2).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Snacks'),
        imagePath: "assets/images/download (2).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('cleaning'),
        imagePath: "assets/images/download (3).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Personal Care'),
        imagePath: "assets/images/download (4).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate("Home Appliances"),
        imagePath: "assets/images/download (8).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Grooming'),
        imagePath: "assets/images/download (5).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Health'),
        imagePath: "assets/images/images (3).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Baby Care'),
        imagePath: "assets/images/download (6).jpg",
      ),
      CategoryItem(
        name: AppLocalization.of(context)!.translate('Home needs'),
        imagePath: "assets/images/download (7).jpg",
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
