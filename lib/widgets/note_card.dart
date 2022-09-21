import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/constants.dart';

Widget noteCard({
  required QueryDocumentSnapshot documentSnapshot,
  final Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              documentSnapshot['note_title'],
              style: getRegularStyle(
                color: textColor,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              documentSnapshot['note_content'],
              style: getRegularStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
