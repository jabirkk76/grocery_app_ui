// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/controller/cart_controller.dart';


import 'package:provider/provider.dart';

import '../../explore_screen/widget/order_failed_dialog.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 25,
                  ))
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Select Method',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(Icons.payment),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Promo Code',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Pick Discount',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total Cost',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '\$13.97',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFE2E2E2),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('By placing an order you agree to our'),
              Text(
                'Terms',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('And'),
              Text(
                'Conditions',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: CustomButtonWidget(
              text: 'Place Order',
              onTap: () {
                cartController.navigateToPrevious(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return OrderFailedDialogue();
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
