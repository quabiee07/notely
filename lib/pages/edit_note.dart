import 'package:flutter/material.dart';
import 'package:notely/widgets/multiline_textfield.dart';

import '../utils/color.dart';
import '../utils/constants.dart';

class EditNotePage extends StatelessWidget {
  EditNotePage({Key? key}) : super(key: key);
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

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
                    const SizedBox(
                      height: 7,
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
        ));
  }
}
