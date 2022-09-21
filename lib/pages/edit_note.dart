import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notely/widgets/multiline_textfield.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class EditNotePage extends StatefulWidget {
   EditNotePage({Key? key}) : super(key: key);

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  final _titleController = TextEditingController();

  final _descController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

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
                  TitleMultilineTextfield(
                    hint: 'Add a title',
                    controller: _titleController,
                  ),
                  DescMultilineTextfield(
                    hint: 'Add some notes..',
                    controller: _descController,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: primaryColor,
          icon: Icon(Icons.save_rounded),
          label: Text(
            'Save',
            style: getRegularStyle(
                fontSize: 16,
                color: secondaryColor,
                fontWeight: FontWeight.w700),
          ),
          onPressed: () async {
            await FirebaseFirestore.instance.collection('Notes').doc().set({
              'note_title': _titleController.text,
              'note_content': _descController.text,
            }).then((value) {
              Navigator.pop(context);
            }).catchError((error) =>
                debugPrint('Failed to add new note due to : $error'));
          }),
    );
  }
}
