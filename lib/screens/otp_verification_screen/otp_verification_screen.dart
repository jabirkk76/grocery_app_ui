import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              AppSizes.szdh20,
              const Text(
                'Enter verification code sent on your number',
                style: TextStyle(color: Color.fromARGB(255, 125, 125, 125)),
              ),
              AppSizes.szdh90,
              Pinput(
                length: 5,
                showCursor: true,
                defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 223, 222, 222)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: const Color.fromARGB(255, 241, 234, 242))),
              ),
              AppSizes.szdh40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Didn\'t receive OTP?',
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  Text(
                    'Resend OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
              AppSizes.szdh40,
              CustomButtonWidget(
                text: 'Submit',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
