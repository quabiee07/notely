import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';

class SliderObject extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const SliderObject(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              image,
              scale: 3.7,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              onboardingTitle,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                  color: textColor, fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              onboardingSubtitle,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
