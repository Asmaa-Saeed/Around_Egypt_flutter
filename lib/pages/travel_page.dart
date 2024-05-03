import 'package:around_egypt/widgets/hotel_page_body.dart';
import 'package:flutter/material.dart';

import '../helper/custom_dearch_delegate.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  TravelPageState createState() => TravelPageState();
}

class TravelPageState extends State<TravelPage> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://th.bing.com/th/id/R.ffab2591c895d6fca45570aeecfcd41f?rik=nZlB%2bN7jHkuL9Q&pid=ImgRaw&r=0", //py
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.8fa3a103f73c0337097f41ebfbb90817?rik=AErrZ%2fCnbfd3pw&pid=ImgRaw&r=0", //fair
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0", //sh
    "https://th.bing.com/th/id/R.ad1191d6950d61c11eead46f817a94b0?rik=ta%2bpUfBMuLd1yA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.5979155ba73b1df61abeeebaaf838673?rik=M0QBhiFOJVjtaA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.5979155ba73b1df61abeeebaaf838673?rik=M0QBhiFOJVjtaA&pid=ImgRaw&r=0", //khan
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FF),
      appBar: AppBar(
        // elevation: 0.0,
        backgroundColor: const Color(0xFFF6F7FF),
        actions: [
          IconButton(
            onPressed: () async {
              await showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: TravelAppBody(urls: urls),
      //bottomNavigationBar: const TravelAppNavigationBar(),
    );
  }
}
