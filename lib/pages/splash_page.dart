import 'dart:async';
import 'package:around_egypt/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static String id = 'SplashPage';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacementNamed(context, LoginPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png',height: 200,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Around Egypt',
                style: TextStyle(
                  color:Color(0xFF2E4790),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const Text(
              'all rights reserved © 2024',
              style: TextStyle(
                color: Color.fromARGB(255, 46, 71, 144),
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
