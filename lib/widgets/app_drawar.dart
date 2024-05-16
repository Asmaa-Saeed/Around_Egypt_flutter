import 'package:around_egypt/pages/setting_page.dart';
import 'package:around_egypt/pages/tickets_page.dart';
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
              'Around Eygpt 🇪🇬',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Jet',
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
          buildlistTiel('Tickets', Icons.airplane_ticket, () async {
            Navigator.pushNamed(context, TicketsPage.id);
            // Navigator.pop(context);
          }),
          buildlistTiel('Log out', Icons.logout, () async {
            Navigator.pushReplacementNamed(context, LoginPage.id);
            // Navigator.pop(context);
          }),
        ],
      ),
    );
  }

  ListTile buildlistTiel(String titel, IconData icon, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: titel == 'Log out'
            ? Colors.red
            : const Color.fromARGB(255, 65, 90, 165),
      ),
      title: Text(
        titel,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Jet',
            color: titel == 'Log out' ? Colors.red : null),
      ),
      onTap: onTap,
    );
  }
}
