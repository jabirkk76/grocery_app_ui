// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/product_detail_controller.dart';


import 'package:provider/provider.dart';

class ItemCounterWidget extends StatefulWidget {
  final Function? onAmountChanged;

  const ItemCounterWidget({Key? key, this.onAmountChanged}) : super(key: key);

  @override
  _ItemCounterWidgetState createState() => _ItemCounterWidgetState();
}

class _ItemCounterWidgetState extends State<ItemCounterWidget> {
  @override
  Widget build(BuildContext context) {
    final productDetailController =
        Provider.of<ProductDetailController>(context, listen: false);
    return Consumer<ProductDetailController>(
      builder: (context, value, child) => Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: IconButton(
                onPressed: () {
                  if (value.amount > 0) {
                    value.decrementAmount();
                  }
                },
                icon: const Icon(Icons.remove)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              productDetailController.amount.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: Border.all()),
            child: IconButton(
                onPressed: () {
                  value.incrementAmount();
                  // updateParent();
                },
                icon: const Icon(Icons.add)),
          ),
        ],
      ),
    );
  }

  // void updateParent() {
  //   final productDetailController =
  //       Provider.of<ProductDetailController>(context, listen: false);
  //   if (widget.onAmountChanged != null) {
  //     widget.onAmountChanged!(productDetailController.amount);
  //   }
  // }

  // Widget getText({
  //   required String text,
  //   required double fontSize,
  //   bool isBold = false,
  //   color = Colors.black,
  // }) {
  //   return Text(
  //     text,
  //     style: TextStyle(
  //       fontSize: fontSize,
  //       fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  //       color: color,
  //     ),
  //   );
  // }
}
