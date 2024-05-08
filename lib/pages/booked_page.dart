import 'package:around_egypt/widgets/add_dialog.dart';
import 'package:flutter/material.dart';

import '../widgets/booked_page_body.dart';

class BookedPage extends StatelessWidget {
  static String id = 'BookedPage';

  const BookedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 46, 71, 144),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AddDialog(),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
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
