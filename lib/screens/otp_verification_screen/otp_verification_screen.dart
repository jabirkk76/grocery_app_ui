import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'One Time Verification',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              AppSizes.szdh40,
              const Text(
                'Enter verification code sent on your number',
                style: TextStyle(color: AppColor.primaryColor),
              ),
              AppSizes.szdh40,
              const Pinput(
                length: 5,
                showCursor: true,
                defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromARGB(255, 241, 234, 242))),
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
