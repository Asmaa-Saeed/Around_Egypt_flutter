// ignore_for_file: use_build_context_synchronously

import 'package:around_egypt/constants/constants.dart';
import 'package:around_egypt/services/booking_service.dart';
import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_text_form_field.dart';
import 'package:around_egypt/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../pages/booked_page.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({
    super.key,
  });

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  String? numOfTickets;

  String? date;

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
      backgroundColor: Colors.white.withOpacity(0.95),
      title: Center(
        child: Column(
          children: [
            const Text(
              'Add a Ticket',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset('images/ticket.svg', height: 80),
          ],
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100,
            child: CustomTextFormField(
              prefixIcon: Icons.airplane_ticket,
              keyboardType: TextInputType.number,
              hintText: "Tickets",
              onChanged: (value) {
                numOfTickets = value;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.date_range_outlined,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Date',
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: selected
                    ? Text('$date')
                    : Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: kPrimaryColor, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
              )
            ],
          )
        ],
      ),
      actions: [
        Center(
            child: CustomButton(
          text: 'Add',
          onTap: () async {
            await BookingService().bookTicket(numOfTickets!, date!);
            Navigator.pop(context);
            showSnackBar(context, 'Ticket Added successfully', false);
            Navigator.pushNamed(context, BookedPage.id);
          },
        )),
      ],
    );
  }

  void _selectDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Transform.scale(
          scale: 0.8,
          child: child,
        );
      },
    );
    date = DateFormat.MMMEd().format(selectedDate!).toString();
    selected = true;
    setState(() {});
  }
}
