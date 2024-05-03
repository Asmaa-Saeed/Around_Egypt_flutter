import 'package:flutter/material.dart';

import '../helper/custom_dearch_delegate.dart';
import '../widgets/musuems_page_body.dart';

class MusuemsPage extends StatefulWidget {
  const MusuemsPage({super.key});

  @override
  MusuemsPageState createState() => MusuemsPageState();
}

class MusuemsPageState extends State<MusuemsPage> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://i.pinimg.com/564x/7e/12/f6/7e12f6fd531d275306a1dd639828273c.jpg",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://i.pinimg.com/564x/92/7e/8c/927e8c20928a568fb11ec91bdef08236.jpg",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://i.pinimg.com/474x/aa/a6/70/aaa670505bc79beecc6ffc0201ab95b0.jpg",
    "https://i.pinimg.com/736x/2f/f3/8b/2ff38b8b4095421713ffac4a9a2326ca.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://i.pinimg.com/564x/31/5a/11/315a11eb0013bf8797e68f6fc94e8c30.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
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
      body: MusuemsPageBody(urls: urls),
      //bottomNavigationBar: const MusuemsAppNavigationBar(),
    );
  }
}
