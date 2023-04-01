// ignore_for_file: unused_element, unused_local_variable

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/controller/auth_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class PasswordVerifyScreen extends StatelessWidget {
  const PasswordVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ClipPath(
            clipper: SignInCustomContainer(),
            child: Container(
              height: 240,
              width: double.infinity,
              color: AppColor.primaryColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalization.of(context)!.translate('Create Password'),
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  AppSizes.szdh20,
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: '********',
                      labelText:
                          AppLocalization.of(context)!.translate('Password'),
                    ),
                  ),
                  AppSizes.szdh20,
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: '********',
                      labelText: AppLocalization.of(context)!
                          .translate('Confirm Password'),
                    ),
                  ),
                  AppSizes.szdh20,
                  CustomButtonWidget(
                    text: AppLocalization.of(context)!.translate(
                      'Continue',
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OtpVerificationScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInCustomContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..quadraticBezierTo(
        0,
        size.height / 3.5,
        size.width * 2 / 3,
        size.height / 2,
      )
      ..quadraticBezierTo(
        size.width * 1.5 / 3,
        size.height * 3 / 3,
        size.width,
        size.height,
      )
      ..lineTo(
        size.width,
        0,
      );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
