import 'package:flutter/material.dart';
import 'package:notely/utils/color.dart';
import 'package:notely/widgets/profile_list_item.dart';

import '../utils/constants.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      appName,
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
                  height: 40,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: secondaryDarkColor,
                    child: Image.asset('assets/profile.png'),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Ihekwaba Chukwuebuka',
                  style: getRegularStyle(
                    color: textColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Calabar, Nigeria',
                  style: getRegularStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileListItem(
                    icon: 'assets/award.png', text: buyPremium),
                const ProfileListItem(
                    icon: 'assets/pencil.png', text: editProfile),
                const ProfileListItem(
                    icon: 'assets/contrast.png', text: appTheme),
                const ProfileListItem(
                    icon: 'assets/bell.png', text: notification),
                const ProfileListItem(
                    icon: 'assets/folder-check.png', text: security),
                const ProfileListItem(icon: 'assets/logout.png', text: logout),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<ProfileListItem> profileItem = [];
}
