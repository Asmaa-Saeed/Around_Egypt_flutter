import 'package:flutter/material.dart';

import '../widgets/category_trips_page_body.dart';
import 'musuems_page.dart';

class CategoryTripsPage extends StatelessWidget {
  const CategoryTripsPage({super.key});

  get pageTitle => (MusuemsPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 71, 144),
        title: const Text(
          'Around Egypt',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: const CategoryTripsPageBody(),
    );
  }
}
