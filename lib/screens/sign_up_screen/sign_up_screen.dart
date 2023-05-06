// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/controller/auth_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/more_user_details_signup_screen/more_user_details_signup_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:provider/provider.dart';

import '../password_verify_screen/password_verify_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                    AppLocalization.of(context)!.translate('Sign Up'),
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  AppSizes.szdh20,
                  Text(
                    AppLocalization.of(context)!.translate('credential'),
                  ),
                  AppSizes.szdh20,
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Mobile number',
                      hintStyle: TextStyle(fontSize: 16),
                      fillColor: const Color(0xffF2F2F7),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelStyle: GoogleFonts.acme(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0x4c3c3c43),
                      ),
                    ),
                    style: GoogleFonts.acme(
                      fontSize: 20,
                      height: 0.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  AppSizes.szdh20,
                  CustomButtonWidget(
                    text: AppLocalization.of(context)!.translate(
                      'Send Otp',
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MoreUserDetailSignUpScreen()));
                    },
                  ),
                  AppSizes.szdh40,
                  const Center(
                      child: Text('By Continue you' '\'re agreed to our')),
                  AppSizes.szdh10,
                  Center(
                      child: TextButton(
                          onPressed: () {
                            authController.navigateTermsAndConditions(context);
                          },
                          child: const Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              color: AppColor.primaryColor,
                            ),
                          ))),
                  AppSizes.szdh40,
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
