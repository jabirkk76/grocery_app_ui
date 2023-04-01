import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/category_model.dart';

class CategoryItemCardWidget extends StatelessWidget {
  const CategoryItemCardWidget(
      {Key? key, required this.item, this.color = Colors.blue})
      : super(key: key);
  final CategoryItem item;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: color.withOpacity(0.9),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: imageWidget(),
          ),
          SizedBox(
            height: 60,
            child: Center(
              child: AppText(
                text: item.name,
                textAlign: TextAlign.center,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(
      item.imagePath,
      fit: BoxFit.contain,
    );
  }
}
