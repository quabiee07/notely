import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class ProfileListItem extends StatelessWidget {
  final String icon;
  final String text;
  const ProfileListItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          iconAndTextBox(icon, text),
          Spacer(),
          Transform.scale(
              scaleX: -1, child: Image.asset('assets/Arrow-left-1.png'))
        ],
      ),
    );
  }

  Widget iconBox(String icon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.all(6.0),
        height: 40,
        width: 40,
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: Image.asset(icon),
        ),
      ),
    );
  }

  Widget iconAndTextBox(icon, text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        iconBox(icon),
        SizedBox(
          width: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text,
            style: getRegularStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
