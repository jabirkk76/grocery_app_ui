import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/cart_controller.dart';
import 'package:provider/provider.dart';

class CheckoutBottomSheet extends StatefulWidget {
  @override
  _CheckoutBottomSheetState createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends State<CheckoutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Wrap(
        children: <Widget>[
          Row(
            children: [
              AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
          SizedBox(
            height: 45,
          ),
          cartController.getDivider(),
          cartController.checkoutRow("Delivery", trailingText: "Select Method"),
          cartController.getDivider(),
          cartController.checkoutRow(
            "Payment",
            trailingWidget: Icon(
              Icons.payment,
            ),
          ),
          cartController.getDivider(),
          cartController.checkoutRow("Promo Code",
              trailingText: "Pick Discount"),
          cartController.getDivider(),
          cartController.checkoutRow("Total Cost", trailingText: "\$13.97"),
          cartController.getDivider(),
          SizedBox(
            height: 30,
          ),
          cartController.termsAndConditionsAgreement(context),
          Container(
            margin: EdgeInsets.only(
              top: 25,
            ),
            child: AppButton(
              label: "Place Order",
              // fontWeight: FontWeight.w600,
              padding: EdgeInsets.symmetric(
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
