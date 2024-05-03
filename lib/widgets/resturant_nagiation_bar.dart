import 'package:flutter/material.dart';

class ResturantAppNagiationBar extends StatelessWidget {
  const ResturantAppNagiationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color.fromRGBO(183, 183, 183, 1),
      selectedItemColor:Color.fromARGB(255, 46, 71, 144),
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
