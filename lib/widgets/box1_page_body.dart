import 'package:around_egypt/widgets/oval_container.dart';
import 'package:flutter/material.dart';

class Box1PageBody extends StatelessWidget {
  const Box1PageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        color:Color.fromARGB(255, 46, 71, 144),
                        child: const Center(
                          child: Text(
                            'The Grand Egyption Museum',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 150,
                        child: Image(
                          image: AssetImage('images/IMG-20231208-WA0042.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const OvalContainer(),
                      Container(
                        width: 200,
                        height: 50,
                        color: const Color.fromARGB(255, 46, 71, 144),
                        child: const Center(
                          child: Text(
                            'Museum of Islamic Art',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 150,
                        child: Image(
                          image: AssetImage('images/IMG-20231208-WA0045.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const OvalContainer(),
                      Container(
                        width: 200,
                        height: 50,
                        color: const Color.fromARGB(255, 46, 71, 144),
                        child: const Center(
                          child: Text(
                            'The Coptic Museum',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 150,
                        child: Image(
                          image:
                              AssetImage('images/IMG-20231208-WA0044(1).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const OvalContainer(),
                      Container(
                        width: 200,
                        height: 50,
                        color: const Color.fromRGBO(255, 206, 59, 1),
                        child: const Center(
                          child: Text(
                            'National Museums of Egyption Civilization',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 150,
                        child: Image(
                          image: AssetImage('images/IMG-20231208-WA0046.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const OvalContainer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
