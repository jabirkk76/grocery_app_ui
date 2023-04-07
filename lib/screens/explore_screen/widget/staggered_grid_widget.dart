import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/controller/explore_screen_controller.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/widgets/category_item_card_widget.dart';

import 'package:provider/provider.dart';

class StaggeredGridWidget extends StatelessWidget {
  const StaggeredGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final exploreScreenController =
        Provider.of<ExploreScreenController>(context, listen: false);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 4.0,
        children: exploreScreenController
            .items(context)
            .asMap()
            .entries
            .map<Widget>((e) {
          int index = e.key;
          CategoryItem categoryItem = e.value;
          return GestureDetector(
            onTap: () {
              exploreScreenController.onCategoryItemClicked(
                  context, categoryItem);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: CategoryItemCardWidget(
                item: categoryItem,
                color: exploreScreenController
                    .gridColors[exploreScreenController.items(index).length],
              ),
            ),
          );
        }).toList(), // add some space
      ),
    );
  }
}
