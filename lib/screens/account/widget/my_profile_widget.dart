import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/controller/account_screen_controller.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';

class MyProfileWidget extends StatelessWidget {
  const MyProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accountController =
        Provider.of<AccountScreenController>(context, listen: false);
    return Column(
      children: [
        GestureDetector(
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
                        accountController.pickImage(ImageSource.gallery);
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Gallery',
                            style: TextStyle(color: AppColor.primaryColor),
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
                            style: TextStyle(color: AppColor.primaryColor),
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
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/IMG_20230227_101534.jpg'),
                );
              } else {
                return CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(
                    File(value.image!.path),
                  ),
                );
              }
            },
          ),
        ),
        const AppText(
          text: "Jabir K K",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const AppText(
          text: "9074565042",
          color: Color(0xff7C7C7C),
          fontWeight: FontWeight.normal,
          fontSize: 13,
        ),
      ],
    );
  }
}
