import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/styles/colors.dart';


class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 5,
          backgroundColor: const Color(0xffF2F3F2),
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              AppLocalization.of(context)!.translate("Log Out"),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
