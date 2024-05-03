import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/login_page_body.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: LoginPageBody(),
    );
  }
}
