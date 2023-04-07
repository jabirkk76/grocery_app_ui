// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/app_localization.dart';


import '../../../styles/colors.dart';

class HomeBannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/banner_background.png",
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          SizedBox(
            child: Image.asset(
              "assets/images/banner_image.png",
            ),
          ),
          Positioned(
            right: 4,
            bottom: 29,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: AppLocalization.of(context)!.translate('Banner'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const AppText(
                  text: "Get Up To 40%  OFF",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
