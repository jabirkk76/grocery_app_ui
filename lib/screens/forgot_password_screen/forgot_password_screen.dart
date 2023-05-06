import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery_app/controller/forgot_password_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final forgotPasswordController =
        Provider.of<ForgotPasswordController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    ' Reset',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(255, 22, 26, 52)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromARGB(255, 66, 65, 65),
                    ),
                  ),
                ],
              ),
              AppSizes.szdh90,
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 201, 178, 205),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: TextFormField(
                      controller: forgotPasswordController.emailController,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email to receive reset code',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              AppSizes.szdh90,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        forgotPasswordController.navigateVerifyEmailId(context);
                      },
                      child: Text(
                        'SEND',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
