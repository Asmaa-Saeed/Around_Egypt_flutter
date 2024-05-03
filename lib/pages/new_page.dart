import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  const NewPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Color.fromARGB(255, 46, 71, 144),
          child: Center(
            child: Text(
              'This is the content of $title',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
