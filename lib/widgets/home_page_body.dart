import 'package:around_egypt/widgets/list_catergory_card.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          //text
          Column(
            children: [
              Text(
                "Hi ! ",
                //  textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 114, 190),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 3),
          Text(
            "Where do you",
            style: TextStyle(
              color: Color.fromARGB(255, 88, 114, 190),
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 1),
          Text(
            "want to go?",
            style: TextStyle(
              color: Color.fromARGB(255, 88, 114, 190),
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),

          SizedBox(
            height: 20,
          ),
          ListCategorycards()
        ],
      ),
    );
  }
}
