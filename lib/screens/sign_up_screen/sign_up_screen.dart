import 'package:flutter/material.dart';
import 'package:grocery_app/controller/sign_up_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpController =
        Provider.of<SignUpController>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          AppSizes.szdh40,
          Image.asset('assets/images/Group.png'),
          AppSizes.szdh60,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Enter your credentials to continue'),
                AppSizes.szdh40,
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Afssar Hossen Shuvo',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    alignLabelWithHint: true,
                    hintText: '********',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                AppSizes.szdh20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('Forgot password?'),
                  ],
                ),
                AppSizes.szdh30,
                CustomButtonWidget(
                  text: 'Sign Up',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Account created successfully',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    signUpController.navigateToSignIn(context);
                                  },
                                  child: Text(
                                    'OK',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        signUpController.navigateToPreviousScreen(context);
                      },
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
