import 'package:flutter/material.dart';

import '../widgets/resturant_page_body.dart';
//import '../widgets/resturant_app_nagiation_bar.dart';

///////////////////////////////////////////////////
class ResturantPage extends StatefulWidget {
  const ResturantPage({super.key});

  @override
  _ResturantPageState createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://th.bing.com/th/id/R.a1eb67370b1c79e410a37ebf433dbb31?rik=VAMxtmOWykF5ZQ&pid=ImgRaw&r=0",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://th.bing.com/th/id/R.8914970f2db3d82e2f12dee8e6759fea?rik=jOzMsDOrwxLb5w&pid=ImgRaw&r=0",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://media-cdn.tripadvisor.com/media/photo-s/13/29/47/30/photo4jpg.jpg",
    "https://th.bing.com/th/id/OIP.-dMOmV84aAliYhQV6yD2mwAAAA?w=370&h=376&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/R.61aaec585da9c0f46ea371d41186eebc?rik=EvvT6wKJCscsOg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.61aaec585da9c0f46ea371d41186eebc?rik=EvvT6wKJCscsOg&pid=ImgRaw&r=0",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FF),
      appBar: AppBar(
        // elevation: 0.0,
        backgroundColor: const Color(0xFFF6F7FF),

        // title: Row(
        //   children: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ],
        // ),
      ),
      body: ResturantPageBody(urls: urls),
      //  bottomNavigationBar: const ResturantAppNagiationBar(),
    );
  }
}
