import 'package:flutter/material.dart';

class TravelNavigationBar extends StatelessWidget {
  const TravelNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color(0xFFB7B7B7),
      selectedItemColor: const Color.fromARGB(255, 46, 71, 144),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.bookmark),
        //   label: 'BookMark',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.location_on),
        //   label: 'Destination',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.notifications),
        //   label: 'Notification',
        // ),
      ],
    );
  }
}
