import 'package:flutter/material.dart';
import 'package:notely/pages/profile_page.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class RecentNotesPage extends StatefulWidget {
  const RecentNotesPage({Key? key}) : super(key: key);

  @override
  State<RecentNotesPage> createState() => _RecentNotesPageState();
}

class _RecentNotesPageState extends State<RecentNotesPage> {
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
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => const ProfilePage())));
                          },
                          child: Image.asset('assets/align-left-1.png'),
                        ),
                        const Spacer(),
                        Text(
                          recentNotes,
                          style: getRegularStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/search.png'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
