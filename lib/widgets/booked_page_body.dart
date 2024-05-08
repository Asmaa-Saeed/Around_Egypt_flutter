import 'package:flutter/material.dart';

class BookedPageBody extends StatelessWidget {
  const BookedPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background5.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        children: [],
      ),
    );
  }
}
