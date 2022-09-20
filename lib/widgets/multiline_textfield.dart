import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class TitleMultilineTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const TitleMultilineTextfield(
      {Key? key, required this.hint, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.transparent),
        child: TextField(
          style: getRegularStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
          controller: controller,
          maxLines: 10,
          minLines: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: getRegularStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ));
  }
}

class DescMultilineTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const DescMultilineTextfield(
      {Key? key, required this.hint, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.transparent),
        child: TextField(
          style: getRegularStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          controller: controller,
          maxLines: 10,
          minLines: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: getRegularStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}
