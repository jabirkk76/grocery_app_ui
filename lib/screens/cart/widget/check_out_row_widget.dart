// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';


class CheckOutRowWidget extends StatelessWidget {
  CheckOutRowWidget(
      {Key? key, required this.label, this.trailingText, this.trailingWidget})
      : super(key: key);
  String label;
  String? trailingText;
  Widget? trailingWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          AppText(
            text: label,
            fontSize: 18,
            color: const Color(0xFF7C7C7C),
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          trailingText == null
              ? (trailingWidget ?? Container())
              : AppText(
                  text: trailingText.toString(),
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
        ],
      ),
    );
  }
}
