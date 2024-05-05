import 'package:around_egypt/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../widgets/box1_page_body.dart';

class Box1Page extends StatelessWidget {
  const Box1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 71, 144),
        title: const Text('Museums Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              _navigateToHomePage(
                context,
              );
            },
          ),
        ],
      ),
      body: const Box1PageBody(),
    );
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
