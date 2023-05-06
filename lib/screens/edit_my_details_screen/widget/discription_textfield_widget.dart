import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

class DescriptionTextfieldWidget extends StatefulWidget {
  @override
  _DescriptionTextfieldWidgetState createState() =>
      _DescriptionTextfieldWidgetState();
}

class _DescriptionTextfieldWidgetState
    extends State<DescriptionTextfieldWidget> {
  final int _maxWords = 1000;
  String? selectedTextStyle = 'Normal';

  TextStyle _textStyle = TextStyle(fontSize: 16.0);

  void _changeFontStyle(
      FontWeight fontWeight, FontStyle fontStyle, Color color) {
    setState(() {
      _textStyle = _textStyle.copyWith(
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController aboutController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15, top: 5, bottom: 5),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color.fromARGB(255, 248, 240, 240),
              border: Border.all(width: 2, color: Colors.transparent),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: null, // Allow multiple lines
                inputFormatters: [
                  // Limit maximum words
                  LengthLimitingTextInputFormatter(_maxWords),
                ],
                decoration: InputDecoration(hintText: 'About me'),
                controller: aboutController,
                style: _textStyle,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Row(
              children: [
                Radio(
                  value: 'Normal',
                  groupValue: selectedTextStyle,
                  onChanged: (value) {
                    selectedTextStyle = value;
                    _changeFontStyle(
                      FontWeight.normal,
                      FontStyle.normal,
                      Colors.black,
                    );
                    setState(() {});
                  },
                ),
                Text('Normal')
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Bold Italic',
                  groupValue: selectedTextStyle,
                  onChanged: (value) {
                    selectedTextStyle = value;
                    _changeFontStyle(
                      FontWeight.bold,
                      FontStyle.italic,
                      Colors.black,
                    );
                    setState(() {});
                  },
                ),
                Text('Bold Italic ')
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Bold Red',
                  groupValue: selectedTextStyle,
                  onChanged: (value) {
                    selectedTextStyle = value;
                    _changeFontStyle(
                      FontWeight.bold,
                      FontStyle.normal,
                      Colors.red,
                    );
                    setState(() {});
                  },
                ),
                Text('Bold Red')
              ],
            ),
          ],
        ),
      ],
    );
  }
}
