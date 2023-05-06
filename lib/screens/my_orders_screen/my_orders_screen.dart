import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.primaryColor),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage('assets/istockphoto-182175200-612x612.jpg'),
                radius: 100,
              ),
              AppSizes.szdh20,
              const Text(
                'Empty Cart',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: AppColor.primaryColor),
              ),
              AppSizes.szdh20,
              const Text(
                'Shopeme-We carry a bundle of products..',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black),
              ),
              AppSizes.szdh20,
              Container(
                height: 50,
                width: 120,
                decoration: const BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Center(
                    child: Text(
                  'Start Shop',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
