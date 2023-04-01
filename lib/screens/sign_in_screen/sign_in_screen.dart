// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:grocery_app/controller/auth_controller.dart';
import 'package:grocery_app/controller/language_controller.dart';
import 'package:grocery_app/helpers/app_localization.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_navigation_widget.dart';
import 'package:grocery_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: SignInCustomContainer(),
                child: Container(
                  height: 240,
                  width: double.infinity,
                  color: AppColor.primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Not a member yet?',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ));
                          },
                          child: Text(
                            AppLocalization.of(context)!.translate('Signup'),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      AppLocalization.of(context)!.translate('Login'),
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    AppSizes.szdh40,
                    const Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 18),
                    ),
                    AppSizes.szdh20,
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: '********',
                        labelText: AppLocalization.of(context)!
                            .translate('Phone Number'),
                      ),
                    ),
                    AppSizes.szdh20,
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: '********',
                        labelText:
                            AppLocalization.of(context)!.translate('Password'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(AppLocalization.of(context)!
                            .translate('Forgot password?')),
                      ],
                    ),
                    AppSizes.szdh20,
                    Consumer<AuthController>(
                      builder: (context, value, child) {
                        return CustomButtonWidget(
                          text: AppLocalization.of(context)!.translate('Login'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomnavigationWidget(),
                            ));
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Consumer<LanguageController>(
                      builder: (context, value, child) {
                        return Center(
                          child: Container(
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: DropdownButton<String>(
                              value: value.defineCurrentLanguage(context),
                              icon: const Icon(
                                Icons.language,
                                color: Colors.blue,
                              ),
                              iconSize: 20,
                              elevation: 0,
                              style: const TextStyle(color: Colors.white),
                              underline: Container(
                                height: 1,
                              ),
                              dropdownColor: Colors.white,
                              onChanged: (newValue) {
                                print(newValue);
                                value.changeLanguage(newValue!);
                              },
                              items:
                                  value.languages.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
        size.height / 1.5,
        size.width * 2 / 4,
        size.height / 2,
      )
      ..quadraticBezierTo(
        size.width * 3 / 4,
        size.height * 1.6 / 4,
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
