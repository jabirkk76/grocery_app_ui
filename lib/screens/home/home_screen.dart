import 'package:flutter/material.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Text(
              "Khartoum,Sudan",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              homeController.padded(
                SearchBarWidget(),
              ),
              SizedBox(
                height: 25,
              ),
              homeController.padded(
                HomeBannerWidget(),
              ),
              SizedBox(
                height: 25,
              ),
              homeController.padded(
                homeController.subTitle("Exclusive Order"),
              ),
              homeController.getHorizontalItemSlider(exclusiveOffers),
              SizedBox(
                height: 15,
              ),
              homeController.padded(
                homeController.subTitle("Best Selling"),
              ),
              homeController.getHorizontalItemSlider(bestSelling),
              SizedBox(
                height: 15,
              ),
              homeController.padded(
                homeController.subTitle("Groceries"),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 105,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GroceryFeaturedCard(
                      groceryFeaturedItems[0],
                      color: Color(0xffF8A44C),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GroceryFeaturedCard(
                      groceryFeaturedItems[1],
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              homeController.getHorizontalItemSlider(groceries),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
