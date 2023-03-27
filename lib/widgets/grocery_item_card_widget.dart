// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/app_text.dart';
import 'package:moonlight/models/grocery_model.dart';

class GroceryItemCardWidget extends StatelessWidget {
  const GroceryItemCardWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final GroceryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE2E2E2),
        ),
        borderRadius: BorderRadius.circular(
          18,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: "GroceryItem:" + item.name + "-",
                  child: imageWidget(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppText(
              text: item.name,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            AppText(
              text: item.description,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF7C7C7C),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppText(
                  text: "\$${item.price.toStringAsFixed(2)}",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                addWidget()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(item.imagePath);
  }

  Widget addWidget() {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17), color: Colors.green),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
