// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/delivery_address_screen/delivery_address_screen.dart';
import 'package:grocery_app/screens/language_screen/language_screen.dart';
import 'package:grocery_app/screens/orders_screen/orders_screen.dart';

import 'package:image_picker/image_picker.dart';




import 'package:provider/provider.dart';

import '../../controller/account_screen_controller.dart';
import 'widget/account_item_widget.dart';
import 'widget/log_out_button_widget.dart';
import 'widget/my_profile_widget.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final accountController =
        Provider.of<AccountScreenController>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppSizes.szdh50,
            const MyProfileWidget(),
            AppSizes.szdh50,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Card(
                      color: const Color(0xffF2F3F2),
                      child: SizedBox(
                        height: 80,
                        width: double.maxFinite,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AccountItemWidget(
                              icon: Icons.payment_rounded,
                              label: AppLocalization.of(context)!
                                  .translate("Payment Methods"),
                              page: const OrdersScreen(),
                            ),
                            AccountItemWidget(
                              label: AppLocalization.of(context)!
                                  .translate('my details'),
                              icon: Icons.info_sharp,
                              page: const OrdersScreen(),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 230,
                    width: double.maxFinite,
                    child: Card(
                        color: const Color(0xffF2F3F2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AccountItemWidget(
                              label: AppLocalization.of(context)!
                                  .translate('My Orders'),
                              icon: Icons.info_sharp,
                              page: const OrdersScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.location_on_outlined,
                              label: AppLocalization.of(context)!
                                  .translate("Delivery Address"),
                              page: const DeliveryAddressScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.notifications,
                              label: AppLocalization.of(context)!
                                  .translate("Notifications"),
                              page: const OrdersScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.settings,
                              label: AppLocalization.of(context)!
                                  .translate("language"),
                              page: const LanguageScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.share,
                              label: AppLocalization.of(context)!
                                  .translate("Invite Friends"),
                              page: const OrdersScreen(),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            AppSizes.szdh20,
            const LogoutButtonWidget(),
            AppSizes.szdh20
          ],
        ),
      ),
    );
  }
}
