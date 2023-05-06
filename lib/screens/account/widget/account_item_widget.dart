import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class AccountItemWidget extends StatelessWidget {
  const AccountItemWidget(
      {Key? key, required this.label, required this.icon, required this.page})
      : super(key: key);
  final String label;
  final IconData icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => page,
          ));
        },
        child: Row(
          children: [
            const SizedBox(width: 15),
            Icon(
              icon,
              color: AppColor.primaryColor,
              size: 20,
            ),
            const SizedBox(width: 20),
            Text(
              label,
              style: const TextStyle(color: AppColor.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
