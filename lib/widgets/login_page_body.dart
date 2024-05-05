import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_text_field.dart';
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
        children: [
          const Spacer(
            flex: 1,
          ),
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
          const Spacer(
            flex: 2,
          ),
          const Row(
              // children: [
              //   Text(
              //     'LOGIN',
              //     style: TextStyle(
              //       fontSize: 24,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ],
              ),
          const SizedBox(
            height: 18,
          ),
          const CustomFormTextField(
            hintText: ' Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomFormTextField(
            hintText: '  Password',
          ),
          const SizedBox(
            height: 18,
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
                  color: Color.fromARGB(255, 46, 71, 144),
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
                      fontSize: 16,
                      color: Color.fromARGB(255, 131, 174, 217),
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
