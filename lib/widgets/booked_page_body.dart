import 'dart:async';

import 'package:around_egypt/constants/constants.dart';
import 'package:around_egypt/services/booking_service.dart'; // Import BookingService
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

import '../models/ticket_model.dart';
import 'ticket_item.dart';

class BookedPageBody extends StatefulWidget {
  const BookedPageBody({super.key});

  @override
  State<BookedPageBody> createState() => _BookedPageBodyState();
}

class _BookedPageBodyState extends State<BookedPageBody> {
  List<TicketModel> tickets = [];

  final bool _showSpinner = false;

  final spinkit = Center(
    child: SpinKitWaveSpinner(
      color: kPrimaryColor,
      waveColor: kPrimaryColor.withOpacity(0.5),
      trackColor: kPrimaryColor.withOpacity(0.5),
      size: 85,
    ),
  );

  @override
  void initState() {
    super.initState();
    _fetchTickets();
  }

  Future<void> _fetchTickets() async {
    tickets = await BookingService().fetchTickets();
    setState(() {});
  }

  Future<bool> isEmpty() async { // for delay loading 3 seconds
    await Future.delayed(const Duration(seconds: 3));
    return tickets.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return _showSpinner
        ? spinkit
        : Stack(
            children: [
              Image.asset(
                'images/background5.jpg',
                fit: BoxFit.fill,
                height: double.infinity,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color:
                      const Color.fromARGB(255, 46, 71, 144).withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 12),
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 10),
                      itemCount: tickets.length,
                      itemBuilder: (BuildContext context, int index) {

                        final ticket = tickets[index]; // ticket of index
                        return TicketItem(
                          date: DateFormat.MMMEd()
                              .format(ticket.date)
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
