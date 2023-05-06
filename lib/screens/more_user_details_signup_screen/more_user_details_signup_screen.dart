import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:grocery_app/widgets/custom_textform_field_widget.dart';

class MoreUserDetailSignUpScreen extends StatelessWidget {
  const MoreUserDetailSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormFieldWidget(
                  hint: 'User name',
                ),
                AppSizes.szdh20,
                CustomTextFormFieldWidget(
                  hint: 'Gender',
                ),
                AppSizes.szdh20,
                CustomTextFormFieldWidget(
                  hint: 'Age',
                ),
                AppSizes.szdh20,
                CustomTextFormFieldWidget(
                  hint: 'Profession',
                ),
                AppSizes.szdh20,
                CustomTextFormFieldWidget(
                  hint: 'Email',
                ),
                AppSizes.szdh20,
                CustomTextFormFieldWidget(
                  hint: 'Password',
                ),
                AppSizes.szdh20,
                CustomButtonWidget(
                  text: AppLocalization.of(context)!.translate(
                    'Continue',
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OtpVerificationScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
