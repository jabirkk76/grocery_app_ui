import 'package:flutter/material.dart';
import 'package:grocery_app/controller/delivery_address_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryAddressController =
        Provider.of<DeliveryAddressController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Delivery address',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 162, 132, 22),
                    radius: 30,
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Enter your delivery address',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              AppSizes.szdh20,
              Consumer<DeliveryAddressController>(
                builder: (context, value, child) => DropdownButtonFormField(
                  hint: const Text('Choose your location'),
                  value: deliveryAddressController.dropdownvalue,
                  items:
                      deliveryAddressController.locations.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    value.changeValue(newValue);
                  },
                ),
              ),
              AppSizes.szdh20,
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter your town'),
              ),
              AppSizes.szdh50,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor),
                      onPressed: () {},
                      child: const Text('SAVE')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
