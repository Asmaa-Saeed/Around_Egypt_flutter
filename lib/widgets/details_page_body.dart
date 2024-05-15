import 'package:around_egypt/services/booking_service.dart';
import 'package:around_egypt/widgets/add_dialog.dart';
import 'package:flutter/material.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/background5.jpg',
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        Center(
          child: Container(
            color: const Color.fromARGB(255, 46, 71, 144)
                .withOpacity(0.4), // Efficient color usage
            child: Padding(
              padding: const EdgeInsets.all(24.0), // Consistent padding
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center vertically
                children: [
                  const Text(
                    'Egypt has many famous sights and tourist attractions. Tourists can visit places of interest such as the Pyramids, the temples, the museums and other historic places. They also enjoy the fine weather in Egypt.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0), // Consistent spacing
                  ElevatedButton(
                    onPressed: () {
                      BookingService().fetchBookings();
                      showDialog(
                        context: context,
                        builder: ((context) => const AddDialog()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 46, 71, 144),
                      foregroundColor: Colors.white, // Use foregroundColor
                    ),
                    child: const Text('Book A Ticket'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
