import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notely/pages/create_note_page.dart';
import 'package:notely/pages/profile_page.dart';
import 'package:notely/pages/read_note_page.dart';
import 'package:notely/widgets/note_card.dart';

import '../utils/color.dart';
import '../utils/constants.dart';
import 'edit_note.dart';

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
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: Column(children: [
          const SizedBox(
            height: 45,
          ),
          Expanded(
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
                            builder: ((context) => ProfilePage())));
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
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('Notes')
                        .snapshots(),
                    builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(color: primaryColor),
                        );
                      }
                      if (snapshot.hasData) {
                        return MasonryGridView(
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          children: snapshot.data!.docs
                              .map(
                                (note) => noteCard(
                                  documentSnapshot: note,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                ReadNotePage(doc: note)));
                                  },
                                ),
                              )
                              .toList(),
                        );
                      }

                      return const CreateNotePage();
                    }),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: primaryColor,
          label: Text(
            'Add a Note',
            style: getRegularStyle(
                fontSize: 16,
                color: secondaryColor,
                fontWeight: FontWeight.w700),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) {
                  return EditNotePage();
                },
              ),
            );
          }),
    );
  }
}
