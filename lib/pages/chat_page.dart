import 'package:flutter/material.dart';

import '../widgets/app_drawar.dart';
import '../widgets/chat_page_body.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';
  const HomeView(Type homeView, {super.key});

  get appBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 71, 144),
        title: const Text(
          "Around Egypt",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      drawer: const appDrwaer(),
      body: const ChatPageBody(),
    );
  }
}
