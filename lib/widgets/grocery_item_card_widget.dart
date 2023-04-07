// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:share/share.dart';

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
                  text: "\₹${item.price.toStringAsFixed(2)}",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 112, 109, 109),
                ),
                const Spacer(),
                addWidget()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 80,
                    height: 25,
                    child: Card(
                      color: AppColor.primaryColor,
                      // color:
                      child: Center(
                          child: Text(
                        item.offer,
                        style: const TextStyle(color: Colors.white),
                      )),
                    )),
                IconButton(
                    onPressed: () async {
                      await Share.share(
                          'https://github.com/jabirkk76/money_saver');
                    },
                    icon: const Icon(Icons.share))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(item.imagePath);
  }

  Widget addWidget() {
    return Card(
      elevation: 4,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.green,
            size: 25,
          ),
        ),
      ),
    );
  }
}
