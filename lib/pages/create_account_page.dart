import 'package:flutter/material.dart';
import 'package:notely/pages/premium_page.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/widgets/filled_button.dart';
import 'package:notely/widgets/textfield.dart';

import '../utils/constants.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
             const SizedBox(
              height: 45,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      createFreeAcc,
                      style: getRegularStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      createAccDesc,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    FilledTextField(
                      label: fullName,
                      controller: nameController,
                      hint: 'Salman Khan',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledTextField(
                      label: email,
                      controller: emailController,
                      hint: 'mesalmanwap@gmail.com',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledTextField(
                      label: password,
                      controller: passwordController,
                      hint: '#########',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      text: createAcc,
                      pressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) {
                              return const PremuimPage();
                            },
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        haveAnAcc,
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
            ),
          ],
        ),
      ),
    );
  }
}
