import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/models/grocery_model.dart';
import 'package:grocery_app/widgets/chart_item_widget.dart';

import 'widget/bottom_sheet_widget.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "My Cart",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: getChildrenWithSeperator(
                  addToLastChild: false,
                  widgets: demoItems.map((e) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      width: double.maxFinite,
                      child: ChartItemWidget(
                        item: e,
                      ),
                    );
                  }).toList(),
                  seperator: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              CustomButtonWidget(
                text: "Go To Check Out",
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext bc) {
                        return BottomSheetWidget();
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
