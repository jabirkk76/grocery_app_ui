import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';


class NutritionWidget extends StatelessWidget {
  const NutritionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xffEBEBEB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const AppText(
        text: "100gm",
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: Color(0xff7C7C7C),
      ),
    );
  }
}
