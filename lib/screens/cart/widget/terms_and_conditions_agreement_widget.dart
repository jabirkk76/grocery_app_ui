import 'package:flutter/material.dart';

class TermsAndConditionsAgreementWidget extends StatelessWidget {
  const TermsAndConditionsAgreementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'By placing an order you agree to our',
          style: TextStyle(
            color: const Color(0xFF7C7C7C),
            fontSize: 14,
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
            fontWeight: FontWeight.w600,
          ),
          children: const [
            TextSpan(
              text: " Terms",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: " And"),
            TextSpan(
              text: " Conditions",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
    );
  }
}
