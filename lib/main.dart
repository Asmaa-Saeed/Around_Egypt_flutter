import 'package:around_egypt/cubits/login_cubit/login_cubit.dart';
import 'package:around_egypt/cubits/register_cubit/register_cubit.dart';
import 'package:around_egypt/pages/home_page.dart';
import 'package:around_egypt/pages/login_page.dart';
import 'package:around_egypt/pages/register_page.dart';
import 'package:around_egypt/pages/setting_page.dart';
import 'package:around_egypt/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        LoginPage.id: (context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: const LoginPage(),
            ),
        RegisterPage.id: (context) => BlocProvider(
              create: (context) => RegisterCubit(),
              child: const RegisterPage(),
            ),
        HomePage.id: (context) => const HomePage(),
        BookedPage.id: (context) => const BookedPage(),
        SettingPage.id: (context) => const SettingPage(),
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
