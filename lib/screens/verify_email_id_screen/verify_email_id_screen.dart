import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery_app/controller/verify_email_controller.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class VerifyEmailIdScreen extends StatelessWidget {
  const VerifyEmailIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final verifyEmailController =
        Provider.of<VerifyEmailController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Verify Email',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Verify Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '6 digit code send to your Email ID',
                style: TextStyle(
                    color: Color.fromARGB(255, 201, 178, 205), fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),
              Pinput(
                length: 6, // Provider.of<ForgotPasswordController>(context,
                //         listen: false)
                //     .verifyOtp(context);
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 223, 222, 222),
                    ),
                  ),
                ),
                onCompleted: (value) {},
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 223, 222, 222),
                      ),
                      onPressed: () {},
                      child: Text(
                        'RESEND',
                        style: TextStyle(
                            fontSize: 16, color: AppColor.primaryColor),
                      )),
                  TextButton(
                      onPressed: () {
                        verifyEmailController
                            .navigateNewPasswordScreen(context);
                      },
                      child: Text(
                        'VERIFY',
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
