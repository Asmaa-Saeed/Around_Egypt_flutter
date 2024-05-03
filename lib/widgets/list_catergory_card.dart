import 'package:around_egypt/widgets/catergory_card.dart';
import 'package:flutter/material.dart';

import '../models/catergory_model.dart';
import '../pages/category_trips_page.dart';

class ListCategorycards extends StatelessWidget {
  const ListCategorycards({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(images: 'images/cairo.jpeg', categorName: "Cairo"),
    CategoryModel(images: 'images/aswan.jpeg', categorName: "Aswan"),
    CategoryModel(images: 'images/hurgada.jpeg', categorName: "Hurgada"),
    CategoryModel(images: 'images/alex.jpeg', categorName: "Alex"),
    CategoryModel(images: 'images/luxor.jpeg', categorName: "Loxur"),
  ];
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (c) => const CategoryTripsPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.deepOrange,
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              return CategoryCard(
                category: categories[index],
              );
            })),
      ),
    );
  }
}
