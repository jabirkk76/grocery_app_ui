// ignore_for_file: body_might_complete_normally_nullable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/screens/orders_screen/orders_screen.dart';
import 'package:grocery_app/utils/app_utils.dart';
import 'package:image_picker/image_picker.dart';

import '../models/account_item.dart';
import '../styles/colors.dart';

class AccountScreenController with ChangeNotifier {
  File? image;
  Future<File?> pickImage(ImageSource source) async {
    image = await AppUtils().imagePick(source);
    notifyListeners();
  }

  List<AccountItem> account(BuildContext context) {
    List<AccountItem> accountItems = [
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("orders"),
          "assets/icons/account_icons/orders_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate('my details'),
          "assets/icons/account_icons/details_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("Delivery Access"),
          "assets/icons/account_icons/delivery_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("Payment Methods"),
          "assets/icons/account_icons/payment_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("Promo Card"),
          "assets/icons/account_icons/promo_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("Notifications"),
          "assets/icons/account_icons/notification_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("Help"),
          "assets/icons/account_icons/help_icon.svg"),
      AccountItem(
          page: const OrdersScreen(),
          AppLocalization.of(context)!.translate("About"),
          "assets/icons/account_icons/about_icon.svg"),
    ];
    return accountItems;
  }

  Widget logoutButton() {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffF2F3F2),
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                "assets/icons/account_icons/logout_icon.svg",
              ),
            ),
            const Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
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
