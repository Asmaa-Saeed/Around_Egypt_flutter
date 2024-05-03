//

import 'package:around_egypt/pages/details_page.dart';
import 'package:flutter/material.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/descBackground.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 375,
                color:
                    const  Color.fromARGB(255, 46, 71, 144).withOpacity(0.5),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Egypt has many famous sights and tourist attractions. Tourists can visit places of interest such as the Pyramids, the temples, the museums and other historic places. They also enjoy the fine weather in Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
               onPressed: () {
              
               },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 46, 71, 144),
              ),
              child: const Text(
                'Book A Ticket',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
