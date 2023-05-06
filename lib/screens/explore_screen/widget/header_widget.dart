import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/common_widgets/padding_widget.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/screens/search_screen/search_screen.dart';
import 'package:grocery_app/styles/colors.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: AppLocalization.of(context)!.translate('Find Products'),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchScreen(),
            ));
          },
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 201, 178, 205),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.search,
                      color: AppColor.primaryColor,
                      size: 20,
                    ),
                  ),
                  Text(AppLocalization.of(context)!.translate("Search Store"),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                      )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
