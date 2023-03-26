import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accountController =
        Provider.of<AccountScreenController>(context, listen: false);
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: SizedBox(
                  width: 65,
                  height: 65,
                  child: accountController.getImageHeader(),
                ),
                title: AppText(
                  text: "Jabir K K",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: AppText(
                  text: "https://github.com/jabirkk76",
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              Column(
                children: getChildrenWithSeperator(
                  widgets: accountController.accountItems.map((e) {
                    return accountController.getAccountItemWidget(e);
                  }).toList(),
                  seperator: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              accountController.logoutButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
