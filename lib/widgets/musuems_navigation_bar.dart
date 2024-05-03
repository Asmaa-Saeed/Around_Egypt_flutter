import 'package:flutter/material.dart';

class MusuemsNavigationBar extends StatelessWidget {
  const MusuemsNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color(0xFFB7B7B7),
      selectedItemColor: const Color.fromRGBO(225, 172, 13, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.notifications),
        //   label: 'Notification',
        // ),
      ],
    );
  }
}
