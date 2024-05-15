import 'package:around_egypt/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                '5', 
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
