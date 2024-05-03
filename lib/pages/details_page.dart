//

//import 'package:around_egypt/pages/more_Info_page.dart';
import 'package:flutter/material.dart';

import '../widgets/details_page_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const  Color.fromARGB(255, 46, 71, 144),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const DetailsPageBody(),
    );
  }
}

// void navigateToMoreInfoPage(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => const MoreInfoPage(),
//     ),
//   );
// }
