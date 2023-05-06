// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/delivery_address_screen/delivery_address_screen.dart';
import 'package:grocery_app/screens/language_screen/language_screen.dart';
import 'package:grocery_app/screens/my_details_screen/my_details_screen.dart';
import 'package:grocery_app/screens/my_orders_screen/my_orders_screen.dart';

import 'package:grocery_app/styles/colors.dart';

import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';
import 'package:share/share.dart';

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
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: const Color(0xffF2F3F2),
                      child: SizedBox(
                        height: 80,
                        width: double.maxFinite,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AccountItemWidget(
                              label: AppLocalization.of(context)!
                                  .translate('my details'),
                              icon: Icons.info_sharp,
                              page: const MyDetailsScreen(),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 230,
                    width: double.maxFinite,
                    child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: const Color(0xffF2F3F2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AccountItemWidget(
                              label: AppLocalization.of(context)!
                                  .translate('My Orders'),
                              icon: Icons.info_sharp,
                              page: const MyOrdersScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.location_on_outlined,
                              label: AppLocalization.of(context)!
                                  .translate("Delivery Address"),
                              page: const DeliveryAddressScreen(),
                            ),
                            AccountItemWidget(
                              icon: Icons.settings,
                              label: AppLocalization.of(context)!
                                  .translate("language"),
                              page: const LanguageScreen(),
                            ),
                            // AccountItemWidget(
                            //   icon: Icons.share,
                            //   label: AppLocalization.of(context)!
                            //       .translate("Invite Friends"),
                            //   page: const OrdersScreen(),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () async {
                                  await Share.share(
                                      'https://github.com/jabirkk76/money_saver');
                                },
                                child: Row(
                                  children: [
                                    const SizedBox(width: 15),
                                    Icon(
                                      Icons.share,
                                      color: AppColor.primaryColor,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 20),
                                    Text(
                                      'Invite Friends',
                                      style: const TextStyle(
                                          color: AppColor.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
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
