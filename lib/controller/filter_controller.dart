// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../styles/colors.dart';

class FilterController with ChangeNotifier {
  List<String> categories = [
    "Eggs",
    "Noodles & Pasta",
    'Chips & Crisps',
    "Fast Food",
  ];
  List<String> brandList = [
    "Individual Collection",
    'Cocacola',
    'Ifad',
    'Kazi Formas'
  ];
  List<bool> categoryBoolList = [false, false, false, false];
  List<bool> brandBoolList = [false, false, false, false];
  void changeCategoryIndex(int index) {
    categoryBoolList[index] = !categoryBoolList[index];
    notifyListeners();
  }

  void changeBrandIndex(int index) {
    brandBoolList[index] = !brandBoolList[index];
    notifyListeners();
  }

  void navigateToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  Widget getLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget getLabel2(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class OptionItem extends StatefulWidget {
  final String text;

  const OptionItem({Key? key, required this.text}) : super(key: key);

  @override
  _OptionItemState createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
        });
      },
      child: Row(
        children: [
          getCheckBox(),
          const SizedBox(
            width: 12,
          ),
          getTextWidget(),
        ],
      ),
    );
  }

  Widget getTextWidget() {
    return Text(
      widget.text,
      style: TextStyle(
        color: checked ? AppColor.primaryColor : Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget getCheckBox() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: SizedBox(
        width: 25,
        height: 25,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  width: checked ? 0 : 1.5, color: const Color(0xffB1B1B1)),
              borderRadius: BorderRadius.circular(8),
              color: checked ? AppColor.primaryColor : Colors.transparent),
          child: Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.transparent,
            ),
            child: Checkbox(
              value: checked,
              onChanged: (state) => setState(() => checked = !checked),
              activeColor: Colors.transparent,
              checkColor: Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
        ),
      ),
    );
  }
}
