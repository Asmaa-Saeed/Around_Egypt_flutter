import 'package:flutter/material.dart';

import '../widgets/app_drawar.dart';
import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomeView';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 71, 144),
        title: const Text(
          "Around Egypt",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: const HomePageBody(),
    );
  }
}
