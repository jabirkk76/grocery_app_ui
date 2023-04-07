import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/common_widgets/padding_widget.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';


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
        PaddingWidget(
          widget: const SearchBarWidget(),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
