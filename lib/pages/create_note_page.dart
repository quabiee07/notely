import 'package:flutter/material.dart';
import 'package:notely/pages/edit_note.dart';
import 'package:notely/pages/profile_page.dart';
import 'package:notely/utils/color.dart';

import '../utils/constants.dart';
import '../widgets/filled_button.dart';

class CreateNotePage extends StatelessWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
                                builder: ((context) =>  ProfilePage())));
                          },
                          child: Image.asset('assets/align-left-1.png'),
                        ),
                        const Spacer(),
                        Text(
                          allNotes,
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
                    const SizedBox(
                      height: 100,
                    ),
                    Center(child: Image.asset('assets/Group841.png')),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      allNotesTitle,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      allNotesDesc,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    CustomButton(
                      text: createNote,
                      pressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) {
                              return  EditNotePage();
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        importNotes,
                        style: getRegularStyle(
                          fontSize: 16,
                          color: primaryColor,
                          fontWeight: FontWeightManager.semiBold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
