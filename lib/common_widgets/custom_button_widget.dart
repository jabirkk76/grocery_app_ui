import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';


class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      width: 353,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          backgroundColor: AppColor.primaryColor,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
