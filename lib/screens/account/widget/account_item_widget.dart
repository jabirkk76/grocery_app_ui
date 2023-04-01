import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/models/account_item.dart';

class AccountItemWidget extends StatelessWidget {
  const AccountItemWidget({super.key, required this.accountItem});
  final AccountItem accountItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => accountItem.page,
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    accountItem.iconPath,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  accountItem.label,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
