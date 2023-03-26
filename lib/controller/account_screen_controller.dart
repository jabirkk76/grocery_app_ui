import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/account_item.dart';
import '../styles/colors.dart';

class AccountScreenController with ChangeNotifier {
  List<AccountItem> accountItems = [
    AccountItem("Orders", "assets/icons/account_icons/orders_icon.svg"),
    AccountItem("My Details", "assets/icons/account_icons/details_icon.svg"),
    AccountItem(
        "Delivery Access", "assets/icons/account_icons/delivery_icon.svg"),
    AccountItem(
        "Payment Methods", "assets/icons/account_icons/payment_icon.svg"),
    AccountItem("Promo Card", "assets/icons/account_icons/promo_icon.svg"),
    AccountItem(
        "Notifications", "assets/icons/account_icons/notification_icon.svg"),
    AccountItem("Help", "assets/icons/account_icons/help_icon.svg"),
    AccountItem("About", "assets/icons/account_icons/about_icon.svg"),
  ];

  Widget logoutButton() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: Color(0xffF2F3F2),
          textStyle: TextStyle(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 25),
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
            Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/IMG_20230227_101534.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidget(AccountItem accountItem) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              accountItem.iconPath,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            accountItem.label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
