// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/explore_screen_controller.dart';

import 'package:provider/provider.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exploreController =
        Provider.of<ExploreScreenController>(context, listen: false);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          exploreController.getHeader(context),
          Expanded(
            child: exploreController.getStaggeredGridView(context),
          ),
        ],
      ),
    ));
  }
}
