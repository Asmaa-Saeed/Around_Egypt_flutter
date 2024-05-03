
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: (4.0), top: (50), bottom: (8.0)),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 220,
            decoration: BoxDecoration(
                //  color: Colors.black,
                image: DecorationImage(
                    image: const AssetImage('images/Image.jpeg')),
                borderRadius: BorderRadius.circular(100)),
            child: const Center(
              child: Text('Cario'),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color.fromARGB(255, 46, 71, 144),
            child: Text("Cario"),
          )
        ],
      ),
    );
  }
}
