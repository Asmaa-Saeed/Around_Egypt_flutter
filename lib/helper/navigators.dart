import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/musuems_page.dart';
import '../pages/resturant_page.dart';
import '../pages/travel_page.dart';

void navigateToMusuemsApp(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const MusuemsPage(),
    ),
  );
}

void navigateToTravelApp(BuildContext context, String pageTitle) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const TravelPage(),
    ),
  );
}

void navigateToresturantApp(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ResturantPage(),
    ),
  );
}

void navigateToHomePage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ),
  );
}
