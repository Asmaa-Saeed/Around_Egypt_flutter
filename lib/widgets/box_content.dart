import 'package:flutter/material.dart';

class BoxContent extends StatelessWidget {
  final String text;
  final BuildContext context;

  const BoxContent(this.text, this.context, {super.key});

  void _showMessageBox() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Box Content'),
          content: const Text('This is the content of the box.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showMessageBox,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 46, 71, 144),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.add,
                color: Colors.white,
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
