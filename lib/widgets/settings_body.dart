import 'package:around_egypt/constants/constants.dart';
import 'package:around_egypt/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../models/setting_model.dart';
import 'account_item.dart';
import 'settings_item.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<SettingsModel> settingsList = [
      SettingsModel(
        bgColor: Colors.orange.shade100,
        color: Colors.orange,
        title: 'Language',
        iconData: Icons.public,
        value: 'English',
      ),
      SettingsModel(
        bgColor: Colors.blue.shade100,
        color: Colors.blue,
        title: 'Notifications',
        iconData: Icons.notifications_none_rounded,
      ),
      SettingsModel(
        bgColor: Colors.purple.shade100,
        color: Colors.purple,
        title: 'Dark Mode',
        iconData: Icons.dark_mode_outlined,
        isDarkMode: true,
      ),
      SettingsModel(
        bgColor: Colors.red.shade100,
        color: Colors.red,
        title: 'Help',
        iconData: Icons.support,
      ),
      SettingsModel(
        bgColor: Colors.deepPurple.shade100,
        color: Colors.deepPurple,
        title: 'Log out',
        iconData: Icons.logout,
        onTap: () {
          Navigator.popAndPushNamed(context, LoginPage.id);
        },
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Settings',
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Account',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const AccountItem(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Settings',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: settingsList.length,
              itemBuilder: (context, index) =>
                  SettingsItem(settingsModel: settingsList[index]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Center(
              child: Text(
                "all copyrights reserved © 2024",
                style: TextStyle(color: kPrimaryColor, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
