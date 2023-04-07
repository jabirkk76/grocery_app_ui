// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';


class ProductDataRowWidget extends StatelessWidget {
  ProductDataRowWidget({Key? key, required this.label, this.customWidget})
      : super(key: key);
  String label;
  final customWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Row(
        children: [
          AppText(text: label, fontWeight: FontWeight.w600, fontSize: 16),
          const Spacer(),
          if (customWidget != null) ...[
            customWidget,
            const SizedBox(
              width: 20,
            )
          ],
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }
}
