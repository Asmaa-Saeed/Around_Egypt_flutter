import 'package:flutter/material.dart';

import '../widgets/register_page_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     //backgroundColor: kPrimaryColor,
      body: RegisterPageBody(),
    );
  }
}
