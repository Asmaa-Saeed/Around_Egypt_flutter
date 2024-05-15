import 'package:around_egypt/constants/constants.dart';
import 'package:around_egypt/services/booking_service.dart'; // Import BookingService
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../models/ticket_model.dart';

class BookedPageBody extends StatefulWidget {
  const BookedPageBody({super.key});

  @override
  State<BookedPageBody> createState() => _BookedPageBodyState();
}

class _BookedPageBodyState extends State<BookedPageBody> {
  List<TicketModel> bookings = [];

  @override
  void initState() {
    super.initState();
    _fetchBookings();
  }

  Future<void> _fetchBookings() async {
    final fetchedBookings = await BookingService().fetchBookings();
    setState(() {
      bookings = fetchedBookings;
    });
  }

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
            width: double.infinity,
            color: const Color.fromARGB(255, 46, 71, 144).withOpacity(0.4),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: bookings.isEmpty
                  ? const Center(
                      child: Text('No bookings found'),
                    ) // Show placeholder for empty bookings
                  : ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 10),
                      itemCount: bookings.length,
                      itemBuilder: (BuildContext context, int index) {
                        final booking = bookings[index];
                        return TicketItem(
                          date: DateFormat.MMMEd()
                              .format(booking.date)
                              .toString(),
                        );
                      },
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class TicketItem extends StatelessWidget {
  final String date;

  const TicketItem({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset('images/ticket.svg', height: 50),
            title: const Text(
              'Number of Tickets',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '5', // Convert number to string
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.date_range_outlined,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Date',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Text(
              date,
              style: const TextStyle(
                fontSize: 14,
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
