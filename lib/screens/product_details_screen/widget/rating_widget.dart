import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Color(0xffF3603F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffF3603F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffF3603F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffF3603F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffF3603F),
          size: 20,
        ),
      ],
    );
  }
}
