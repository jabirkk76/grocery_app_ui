// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:moonlight/controller/home_controller.dart';
import 'package:moonlight/helpers/app_localization.dart';
import 'package:moonlight/models/grocery_model.dart';
import 'package:moonlight/styles/colors.dart';
import 'package:moonlight/widgets/search_bar_widget.dart';
import 'package:provider/provider.dart';

import 'widget/grocery_featured_Item_widget.dart';
import 'widget/home_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            SvgPicture.asset("assets/icons/app_icon_color.svg"),
            const Text(
              "Khartoum,Sudan",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              homeController.padded(
                const SearchBarWidget(),
              ),
              const SizedBox(
                height: 25,
              ),
              homeController.padded(
                HomeBannerWidget(),
              ),
              const SizedBox(
                height: 25,
              ),
              homeController.padded(
                homeController.subTitle(
                    AppLocalization.of(context)!.translate('Exclusive Order')),
              ),
              homeController.getHorizontalItemSlider(exclusiveOffers),
              const SizedBox(
                height: 15,
              ),
              homeController.padded(
                homeController.subTitle(
                    AppLocalization.of(context)!.translate('Best Sell')),
              ),
              homeController.getHorizontalItemSlider(bestSelling),
              const SizedBox(
                height: 15,
              ),
              homeController.padded(
                homeController.subTitle(
                    AppLocalization.of(context)!.translate("Groceries")),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 105,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GroceryFeaturedCard(
                      groceryFeaturedItems[0],
                      color: const Color(0xffF8A44C),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GroceryFeaturedCard(
                      groceryFeaturedItems[1],
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              homeController.getHorizontalItemSlider(groceries),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
