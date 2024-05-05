import 'package:around_egypt/models/catergory_model.dart';
import 'package:flutter/material.dart';

import '../pages/category_trips_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: (4.0), top: (50), bottom: (8.0)),
      child: Column(
        children: [
          Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                //  color: Colors.black,
                image: DecorationImage(image: AssetImage(category.images)),
                //  borderRadius: BorderRadius.circular(10)),
              )),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
             selectCategory(context);
            },
            elevation: 10,
            color: const Color.fromARGB(255, 46, 71, 144),
            child: Text(
              category.categorName,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (c) => const CategoryTripsPage(),
    ));
  }
}
