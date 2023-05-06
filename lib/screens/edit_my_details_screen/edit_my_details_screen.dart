import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/delivery_address_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/edit_my_details_screen/widget/discription_textfield_widget.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class EditMyDetailsScreen extends StatelessWidget {
  const EditMyDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryAddressController =
        Provider.of<DeliveryAddressController>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit My Details',
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
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                    radius: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Upload Image',
                      style: GoogleFonts.acme(
                        color: Color.fromARGB(255, 13, 19, 56),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              AppSizes.szdh20,
              TextFormField(
                decoration: InputDecoration(hintText: 'Name'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Age'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Mobile'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Center(
                            child: Text('Account edited successfully'))));
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Update',
                    style: GoogleFonts.acme(
                      color: Color.fromARGB(255, 13, 19, 56),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              DescriptionTextfieldWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Center(
                            child: Text('Account edited successfully'))));
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Save',
                    style: GoogleFonts.acme(
                      color: Color.fromARGB(255, 13, 19, 56),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
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
