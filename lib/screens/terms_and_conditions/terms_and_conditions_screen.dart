import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/app_sizes.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                Text(
                  'Terms & Conditions',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                AppSizes.szdh40,
                Text(
                    'Please read these terms and conditions along with our privacy policy before ordering through our mobile apps.'),
                AppSizes.szdh40,
                Text(
                  'COMPANY DETAILS',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'Shopeme is a company registered in England with registered company number is 12392266. Our registered office is Unit 1, Radyr Court Shopping Precinct, Cardiff, CF5 2QF'),
                AppSizes.szdh40,
                Text(
                  'OUR CONTACT DETAILS',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'You may contact us by telephone on 02393430060 or using our contact form https://www.shopeme.com .For any issues with your order please initially contact the store you ordered from, contact details are provided in your order confirmation email.'),
                AppSizes.szdh40,
                Text(
                  'ORDERS',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'We, Shopeme, provide a method for you to place an order with your local convenience store. When you place an order, your contract is with that store for the purchase of the products and for the delivery service. To avoid doubt, your contract is not with Shopezy for the purchase of the products or for the delivery service. Shopezy is, therefore, not liable for any damages or any losses that you may incur (except as a result of Shopeme’s own negligence), including without limitation in relation to defective goods or products, damages to your order, or late delivery of your order.'),
                Text(
                    'By ordering via Shopeme, you are indicating that you understand and agree to these terms.'),
                AppSizes.szdh40,
                Text(
                  'ALLERGY INFORMATION',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'If you suffer allergies you agree to always check the label of purchased items.'),
                AppSizes.szdh40,
                Text(
                  'DELIVERY/COLLECTION TIMES',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'All delivery or collection times are estimates only, we do not guarantee that that the order will be delivered or ready for collection by the quoted time.'),
                AppSizes.szdh40,
                Text(
                  'REJECTED/ACCEPTED ORDERS',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                  'When you place an order through Shopeme, we will send your order to the relevant store. On receipt of your order the store will either accept or reject your order. Although almost all orders will be accepted, there may be times where a store is unavailable to fulfil your order and the order will be rejected. This may be because items are out of stock or the stores unable to make a delivery at that time.',
                ),
                AppSizes.szdh40,
                Text(
                  'CHANGES AND CANCELLATIONS',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'After an order is placed with Shopezy, stores can accept amendments or cancel the order. However we will be willing to do so as long as the order has not already left the store premises. It is recommended you contact the store directly if you would like to request a cancellation or amendment to your order'),
                AppSizes.szdh40,
                Text(
                  ' CANCELLATION AND REFUND POLICY',
                  style: TextStyle(fontSize: 20),
                ),
                AppSizes.szdh20,
                Text(
                    'Shopeme reserves the right to cancel orders reasons not attributable to Shopeme, including but not limited to:'),
                Text(
                    'in the event if the address provided by Buyer is either wrong or falls outside the delivery zone;'),
                Text(
                    'failure to contact Buyer by phone or email at the time of delivering the Order booking;'),
                Text(
                    'failure to deliver Buyer Order due to lack of information, direction or authorization from Buyer at the time of delivery; or'),
                Text(
                    'unavailability of all the items ordered by Buyer at the time of booking the Order; or'),
                Text(
                    'unavailability of all the items ordered by Buyer at the time of booking the Order. However, in the unlikely event of an item in an Order being unavailable, Shopeme will contact the'),
                Text(
                    'Buyer on the phone number provided to us at the time of placing the Order and inform Buyer of such unavailability. In such an event Buyer will be entitled to cancel the entire'),
                Text(
                    'Order and shall be entitled to a refund to an amount upto 100% of the Order value')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
