// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/cart/widget/divider_widget.dart';
import 'package:grocery_app/screens/cart/widget/terms_and_conditions_agreement_widget.dart';


import 'package:provider/provider.dart';

import '../../controller/cart_controller.dart';
import 'widget/check_out_row_widget.dart';

class CheckoutBottomSheet extends StatefulWidget {
  const CheckoutBottomSheet({Key? key}) : super(key: key);

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
          const DividerWidget(),
          CheckOutRowWidget(
            label: 'Delivery',
            trailingText: 'Select Method',
          ),
          const DividerWidget(),
          CheckOutRowWidget(
            label: 'Payment',
            trailingWidget: const Icon(Icons.payment),
          ),
          const DividerWidget(),
          CheckOutRowWidget(label: 'Promo Code', trailingText: 'Pick Discount'),
          const DividerWidget(),
          CheckOutRowWidget(label: 'Total Cost', trailingText: "\$13.97"),
          const DividerWidget(),
          const SizedBox(
            height: 30,
          ),
          const TermsAndConditionsAgreementWidget(),
          Container(
            margin: const EdgeInsets.only(
              top: 25,
            ),
            child: AppButton(
              label: "Place Order",
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
