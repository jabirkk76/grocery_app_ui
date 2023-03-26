import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/screens/category_items_screen/category_items_screen.dart';

import 'package:grocery_app/screens/items__screen/items_screen.dart';
import 'package:grocery_app/widgets/category_item_card_widget.dart';

import '../widgets/search_bar_widget.dart';

class ExploreScreenController with ChangeNotifier {
  List<Color> gridColors = [
    Color(0xff53B175),
    Color(0xffF8A44C),
    Color(0xffF7A593),
    Color(0xffD3B0E0),
    Color(0xffFDE598),
    Color(0xffB7DFF5),
    Color(0xff836AF6),
    Color(0xffD73B77),
  ];
  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
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

  Widget getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: "Find Products",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        padded(
          SearchBarWidget(),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget getStaggeredGridView(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        children: categoryItemsDemo.asMap().entries.map<Widget>((e) {
          int index = e.key;
          CategoryItem categoryItem = e.value;
          return GestureDetector(
            onTap: () {
              onCategoryItemClicked(context, categoryItem);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: CategoryItemCardWidget(
                item: categoryItem,
                color: gridColors[index % gridColors.length],
              ),
            ),
          );
        }).toList(),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 4.0, // add some space
      ),
    );
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (BuildContext context) {
          return CategoryItemsScreen();
        },
      ),
    );
  }
}
