import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';

class CheckedText extends StatelessWidget {
  final String title;
  const CheckedText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset('assets/Vector.png'),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: getRegularStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
