// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/app_button.dart';
import 'package:moonlight/common_widgets/app_text.dart';

import 'package:provider/provider.dart';

import '../../controller/cart_controller.dart';

// ignore: use_key_in_widget_constructors
class CheckoutBottomSheet extends StatefulWidget {
  @override
  _CheckoutBottomSheetState createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends State<CheckoutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context, listen: false);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Wrap(
        children: <Widget>[
          Row(
            children: [
              const AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          cartController.getDivider(),
          cartController.checkoutRow("Delivery", trailingText: "Select Method"),
          cartController.getDivider(),
          cartController.checkoutRow(
            "Payment",
            trailingWidget: const Icon(
              Icons.payment,
            ),
          ),
          cartController.getDivider(),
          cartController.checkoutRow("Promo Code",
              trailingText: "Pick Discount"),
          cartController.getDivider(),
          cartController.checkoutRow("Total Cost", trailingText: "\$13.97"),
          cartController.getDivider(),
          const SizedBox(
            height: 30,
          ),
          cartController.termsAndConditionsAgreement(context),
          Container(
            margin: const EdgeInsets.only(
              top: 25,
            ),
            child: AppButton(
              label: "Place Order",
              // fontWeight: FontWeight.w600,
              padding: const EdgeInsets.symmetric(
                vertical: 25,
              ),
              onPressed: () {
                cartController.onPlaceOrderClicked(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
