import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';

import '../screens/explore_screen/widget/order_failed_dialog.dart';

class CartController with ChangeNotifier {
  Widget getDivider() {
    return const Divider(
      thickness: 1,
      color: Color(0xFFE2E2E2),
    );
  }

  Widget termsAndConditionsAgreement(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'By placing an order you agree to our',
          style: TextStyle(
            color: const Color(0xFF7C7C7C),
            fontSize: 14,
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
            fontWeight: FontWeight.w600,
          ),
          children: const [
            TextSpan(
              text: " Terms",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: " And"),
            TextSpan(
              text: " Conditions",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
    );
  }

  Widget checkoutRow(String label,
      {String? trailingText, Widget? trailingWidget}) {
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
                  text: trailingText,
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

  void onPlaceOrderClicked(context) {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return OrderFailedDialogue();
        });
  }

  void navigateToPrevious(BuildContext context) {
    Navigator.pop(context);
  }
}
