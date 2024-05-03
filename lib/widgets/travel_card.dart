//Now we will create our custom widget card
import 'package:around_egypt/pages/details_page.dart';
import 'package:flutter/material.dart';

Widget travelCard(String imgUrl, String hotelName, String location, int rating,
    BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Card(
      margin: const EdgeInsets.only(right: 22.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 0.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailsPage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            scale: 2.0,
          )),
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //this loop will allow us to add as many star as the rating
                    for (var i = 0; i < rating; i++)
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 223, 172, 52),
                      ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ), // Adjust the height as needed

                      Text(
                        hotelName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                        //  height: 20, // Adjust the height as needed
                        // NavBarBox(
                        //   text: 'Details',
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => details(),
                        //       ),
                        //     );
                        //   },
                        // ),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
