// ignore_for_file: use_key_in_widget_constructors, avoid_print, unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/common_widgets/padding_widget.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/screens/home/widget/grocery_name_widget.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

import 'widget/grocery_featured_Item_widget.dart';
import 'widget/home_banner_widget.dart';
import 'widget/horizontal_item_slider_widget.dart';
import 'widget/sub_title_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              homeController.navigateMyDetailScreen(context);
            },
            child: Text('My Account'),
          ),
        ],
        title: Column(
          children: [
            Text(
              'hello',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            Text(
              'Jabir K K',
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
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
              // PaddingWidget(widget: const SearchBarWidget()),

              GestureDetector(
                onTap: () {
                  homeController.navigateSearchScreen(context);
                },
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 93, 55, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Text(
                            AppLocalization.of(context)!
                                .translate("Search Store"),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              AppSizes.szdh20,
              CarouselSlider(
                  items: homeController.sliderImage
                      .map((e) =>
                          Builder(builder: (context) => HomeBannerWidget()))
                      .toList(),
                  options: CarouselOptions(
                    height: 115,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  )),
              const SizedBox(
                height: 25,
              ),
              PaddingWidget(
                widget: SubTitleWidget(
                  text:
                      AppLocalization.of(context)!.translate('Exclusive Order'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              HorizontalItemSliderWidget(items: exclusiveOffers),
              const SizedBox(
                height: 15,
              ),
              PaddingWidget(
                widget: SubTitleWidget(
                  text: AppLocalization.of(context)!.translate('Best Sell'),
                ),
              ),
              HorizontalItemSliderWidget(items: bestSelling),
              const SizedBox(
                height: 15,
              ),
              PaddingWidget(
                widget: SubTitleWidget(
                    text: AppLocalization.of(context)!.translate("Groceries")),
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
              HorizontalItemSliderWidget(
                items: groceries,
              ),
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
