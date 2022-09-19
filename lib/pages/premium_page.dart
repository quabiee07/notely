import 'package:flutter/material.dart';
import 'package:notely/pages/create_note_page.dart';
import 'package:notely/widgets/checked_text.dart';
import 'package:notely/widgets/sub_card.dart';

import '../utils/color.dart';
import '../utils/constants.dart';
import '../widgets/filled_button.dart';

class PremuimPage extends StatefulWidget {
  const PremuimPage({Key? key}) : super(key: key);

  @override
  State<PremuimPage> createState() => _PremuimPageState();
}

class _PremuimPageState extends State<PremuimPage> {
  bool anual = true;
  bool monthlly = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
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
                        const Spacer(),
                        Text(
                          'Notely Premium',
                          style: getRegularStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/Close.png'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(child: Image.asset('assets/Group831.png')),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      premiumBenefits,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CheckedText(title: checkedText1),
                    const SizedBox(
                      height: 16,
                    ),
                    const CheckedText(title: checkedText2),
                    const SizedBox(
                      height: 16,
                    ),
                    const CheckedText(title: checkedText1),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              anual = true;
                              monthlly = false;
                            });
                          },
                          child: SubCard(
                            amount: annualSub,
                            duration: annual,
                            timeFrame: year,
                            choose: anual,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              anual = false;
                              monthlly = true;
                            });
                          },
                          child: SubCard(
                            amount: monthlySub,
                            duration: monthly,
                            timeFrame: month,
                            choose: monthlly,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomButton(
                      text: subscribe,
                      pressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) {
                              return const CreateNotePage();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        restorePurchase,
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
