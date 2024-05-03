import 'package:around_egypt/pages/details_page.dart';
import 'package:around_egypt/widgets/travel_card.dart';
import 'package:flutter/material.dart';

class MusuemsPageBody extends StatelessWidget {
  const MusuemsPageBody({
    super.key,
    required this.urls,
  });

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Let's start by adding the text
          const Text(
            "Welcome TO Egyption Musuems",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "Pick your destination",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),

          const SizedBox(height: 30.0),
          //Now let's Add a Tabulation bar
          DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Color.fromARGB(255, 106, 134, 218),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color.fromARGB(255, 106, 134, 218),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    tabs: [
                      Tab(
                        text: "Trending",
                      ),
                      Tab(
                        text: "Promotion",
                      ),
                      Tab(
                        text: "Favorites",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 300.0,
                    child: TabBarView(
                      children: [
                        //Now let's create our first tab page
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //Now let's add and test our first card
                            GestureDetector(
                              onTap: () {
                                debugPrint("asdknlanklsadnsakl");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailsPage()),
                                );
                              },
                              child: Container(
                                child: travelCard(urls[0], "Egyption Museum",
                                    "Cairo-Egypt", 3, context),
                              ),
                            ),

                            travelCard(urls[5], "Grand Egyption Museum",
                                "Cairo-Egypt", 4, context),
                            travelCard(urls[2], "Museum OF Islamic Art",
                                "Cairo-Egypt", 5, context),
                          ],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //Here you can add what ever you want
                            travelCard(urls[6], "Salah Eldeen Castel",
                                "Cairo-Egypt", 4, context),
                            travelCard(urls[8], "Alazhar Mousque",
                                "Cairo-Egypt", 4, context),
                          ],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
