import 'package:flutter/material.dart';
import 'package:notely/pages/create_account_page.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/utils/constants.dart';
import 'package:notely/widgets/dot_indicator.dart';
import 'package:notely/widgets/filled_button.dart';

import '../widgets/slider_object.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: secondaryColor,
          centerTitle: true,
          title: Text(
            appName,
            style: getRegularStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingObject.length,
                itemBuilder: (context, index) {
                  return onboardingObject[index];
                },
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: DotsIndicator(
                controller: _pageController,
                itemCount: onboardingObject.length,
                onPageSelected: (page) {
                  _pageController.animateToPage(
                    page,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: CustomButton(
                text: getStarted.toUpperCase(),
                pressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountPage()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
        ));
  }

  List<SliderObject> onboardingObject = [
    const SliderObject(
        image: 'assets/Group821.png',
        title: onboardingTitle,
        subtitle: onboardingSubtitle),
    const SliderObject(
        image: 'assets/Group821.png',
        title: onboardingTitle,
        subtitle: onboardingSubtitle),
    const SliderObject(
        image: 'assets/Group821.png',
        title: onboardingTitle,
        subtitle: onboardingSubtitle),
  ];
}
