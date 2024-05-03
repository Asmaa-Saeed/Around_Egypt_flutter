import 'package:around_egypt/helper/navigators.dart';
import 'package:around_egypt/pages/musuems_page.dart';
import 'package:around_egypt/widgets/nav_bar_box.dart';
import 'package:flutter/material.dart';

class CategoryTripsPageBody extends StatelessWidget {
  const CategoryTripsPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50, width: 40), // Adjust the height as needed
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarBox(
                text: 'Museums',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MusuemsPage(),
                    ),
                  );

                  //Box1Page();
                },
              ),
              NavBarBox(
                text: 'Resturants',
                onTap: () {
                  navigateToresturantApp(context);
                },
              ),
              NavBarBox(
                text: 'Hotels',
                onTap: () {
                  navigateToTravelApp(context, 'Hotels');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
