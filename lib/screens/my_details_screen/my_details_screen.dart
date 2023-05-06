import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/delivery_address_controller.dart';
import 'package:grocery_app/controller/my_detail_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class MyDetailsScreen extends StatelessWidget {
  const MyDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myDetailController =
        Provider.of<MyDetailController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Details',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                    radius: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        myDetailController.navigateEditMyDetail(context);
                      },
                      icon: Icon(Icons.edit))
                ],
              ),
              AppSizes.szdh20,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      AppSizes.szdh20,
                      Text('Age'),
                      AppSizes.szdh20,
                      Text('Father\'s name'),
                      AppSizes.szdh20,
                      Text('Mother\'s name'),
                      AppSizes.szdh20,
                      Text('Mobile'),
                      AppSizes.szdh20,
                      Text('Email'),
                      AppSizes.szdh20,
                      Text('Password')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jabir K K'),
                        AppSizes.szdh20,
                        Text('27'),
                        AppSizes.szdh20,
                        Text('Jabbar K K'),
                        AppSizes.szdh20,
                        Text('Sareena C'),
                        AppSizes.szdh20,
                        Text('909090909'),
                        AppSizes.szdh20,
                        Text('jabirkk76@gmail.com'),
                        AppSizes.szdh20,
                        Text('11111')
                      ],
                    ),
                  ),
                ],
              ),
              AppSizes.szdh20,
              Text(
                'About me',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              AppSizes.szdh20,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                      'I\'m an award-winning content writer who has eight years of experience creating compelling articles and short stories. I\'m continuously searching for new topics and stories to capture the attention of new readers. With my knowledge and experience, I can help you fulfill your content creation goals'),
                ),
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(30, 188, 188, 199),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
