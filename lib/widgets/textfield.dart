import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';

class FilledTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const FilledTextField(
      {Key? key,
      required this.label,
      required this.controller,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: getRegularStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xFFFFFDFA)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: getRegularStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
