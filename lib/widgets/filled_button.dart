import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? pressed;
  const CustomButton({Key? key, required this.text, this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: pressed,
        child: Container(
          height: 65,
          padding:  EdgeInsets.all(24.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor,
          ),
          child: Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: FontConstant.fontFamily,
                fontSize: 16,
                letterSpacing: 1.2,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              )),
        ));
  }
}
