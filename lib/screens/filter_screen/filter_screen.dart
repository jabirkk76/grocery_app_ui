// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/filter_controller.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filterController =
        Provider.of<FilterController>(context, listen: false);
    return Consumer<FilterController>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                )),
            title: Text(
              'Filters',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          decoration: BoxDecoration(
            color: Color(0xFFF2F3F2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
                height: 250,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: value.categories.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: value.categoryBoolList[index],
                            onChanged: (values) {
                              value.changeCategoryIndex(index);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              filterController.categories[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text('Brand',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filterController.brandList.length,
                  itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: filterController.brandBoolList[index],
                            onChanged: (values) {
                              value.changeBrandIndex(index);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              filterController.brandList[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
