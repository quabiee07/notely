import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';

class SubCard extends StatelessWidget {
  final String amount;
  final String duration;
  final String timeFrame;
  final bool choose;
  const SubCard(
      {Key? key,
      required this.amount,
      required this.duration,
      required this.timeFrame,
      required this.choose})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      height: 147,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: choose
              ? Border.all(color: primaryColor, width: 6.0)
              : Border.all(color: Colors.transparent, width: 6.0),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            duration,
            style: getRegularStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            amount,
            style: getRegularStyle(
              color: textColor,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            timeFrame,
            style: getRegularStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
    );
  }
}
