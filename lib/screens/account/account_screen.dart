// ignore_for_file: use_key_in_widget_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/screens/account/widget/account_item_widget.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                accountController
                                    .pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Gallery',
                                    style:
                                        TextStyle(color: AppColor.primaryColor),
                                  ),
                                  Icon(
                                    Icons.photo_album,
                                    color: AppColor.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                accountController.pickImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Camera',
                                    style:
                                        TextStyle(color: AppColor.primaryColor),
                                  ),
                                  Icon(
                                    Icons.camera,
                                    color: AppColor.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Consumer<AccountScreenController>(
                    builder: (context, value, child) {
                      if (value.image == null) {
                        return const CircleAvatar(
                          radius: 5,
                          backgroundImage: AssetImage(
                              'assets/images/IMG_20230227_101534.jpg'),
                        );
                      } else {
                        return CircleAvatar(
                          radius: 5,
                          backgroundImage: FileImage(
                            File(value.image!.path),
                          ),
                        );
                      }
                    },
                  ),
                ),
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
                  return AccountItemWidget(
                    accountItem: e,
                  );
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
