// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/app_text.dart';

import 'package:moonlight/controller/account_screen_controller.dart';
import 'package:moonlight/helpers/column_with_seprator.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accountController =
        Provider.of<AccountScreenController>(context, listen: false);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: SizedBox(
                width: 65,
                height: 65,
                child: accountController.getImageHeader(),
              ),
              title: const AppText(
                text: "Jabir K K",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const AppText(
                text: "https://github.com/jabirkk76",
                color: Color(0xff7C7C7C),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            Column(
              children: getChildrenWithSeperator(
                widgets: accountController.account(context).map((e) {
                  return accountController.getAccountItemWidget(e);
                }).toList(),
                seperator: const Divider(
                  thickness: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            accountController.logoutButton(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
