import 'package:around_egypt/pages/setting_page.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 46, 71, 144),
            child: const Text(
              'Around Eygpt',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildlistTiel('Home', Icons.home, () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          }),
          buildlistTiel('Settings', Icons.settings, () {
            Navigator.pushNamed(context, SettingPage.id);
          }),
          buildlistTiel('Log out', Icons.logout, () async {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }),
        ],
      ),
    );
  }

  ListTile buildlistTiel(String titel, IconData icon, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: const Color.fromARGB(255, 65, 90, 165),
      ),
      title: Text(
        titel,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onTap: onTap,
    );
  }
}
