// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';


class SubTitleWidget extends StatelessWidget {
  SubTitleWidget({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
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
