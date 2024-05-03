import 'package:flutter/material.dart';

class BookedPageBody extends StatelessWidget {
  const BookedPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background2.jepg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 375,
                //height: 300,
                color: const Color.fromARGB(255, 152, 136, 130)
                    .withOpacity(0.5), // Adjust the opacity as needed
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Booked Sucessfully',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
