import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class ReadNotePage extends StatelessWidget {
  final QueryDocumentSnapshot doc;
  const ReadNotePage({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const SizedBox(
              height: 45,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/Arrow-left-1.png'),
                        ),
                        const Spacer(),
                        Text(
                          editNotes,
                          style: getRegularStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/More-ver.png'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      doc['note_title'],
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
                      doc['note_content'],
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
          ]),
        ));
  }
}
