import 'package:around_egypt/pages/chat_page.dart';
import 'package:around_egypt/pages/login_page.dart';
import 'package:around_egypt/pages/register_page.dart';
import 'package:around_egypt/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'pages/booked_page.dart';

void main() async {
  runApp(const AroundEgypt());
}

class AroundEgypt extends StatelessWidget {
  const AroundEgypt({super.key});

  @override
  Widget build(BuildContext context) {
    //var id;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        HomeView.id: (context) => const HomeView(HomeView),
        BookedPage.id: (context) => const BookedPage(),
      },
      initialRoute: SplashPage.id,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // RenderSemanticsGestureHandler();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Welcome to HomeView!'),
      ),
    );
  }
}
