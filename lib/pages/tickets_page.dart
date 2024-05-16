import 'package:flutter/material.dart';

import '../widgets/booked_page_body.dart';

class TicketsPage extends StatelessWidget {
  static String id = 'TicketsPage';

  const TicketsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tickets',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 71, 144),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const BookedPageBody(),
    );
  }
}

class NavigateToMoreInfoPage {}
