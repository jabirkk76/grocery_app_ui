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
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 25,
                  ))
            ],
          ),
          SizedBox(
            height: 45,
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
          Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
          Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
          Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
          Divider(
            color: Color(0xFFE2E2E2),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
          SizedBox(
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
