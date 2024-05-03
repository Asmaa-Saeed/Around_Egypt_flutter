import 'package:flutter/material.dart';

class NavBarBox extends StatelessWidget {
  final String text;
  final Function onTap;

  const NavBarBox({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 100,
        height: 50,
        color: const Color.fromARGB(255, 46, 71, 144),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
