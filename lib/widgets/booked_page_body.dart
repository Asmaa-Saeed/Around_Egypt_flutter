import 'package:around_egypt/services/booking_service.dart'; // Import BookingService
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/ticket_model.dart';
import 'ticket_item.dart';

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
                    ) 
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
