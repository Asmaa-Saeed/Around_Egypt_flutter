import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_column.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../pages/register_page.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'images/lottie.json',
            height: 220,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Login To Continue',
            style: TextStyle(
              fontSize: 19,
              color: Color.fromARGB(255, 46, 71, 144),
              fontWeight: FontWeight.bold,
              fontFamily: 'pacifico',
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const CustomColumn(
            text: 'Email',
            hintText: 'Enter Your Email',
            prefixIcon: Icons.email,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomColumn(
            text: 'Password',
            hintText: 'Enter Your Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: CustomButton(text: 'LOGIN'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'don\'t have an account ?',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2E4790),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                child: const Text('REGISTER',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
