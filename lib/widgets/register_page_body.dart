import 'package:around_egypt/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'custom_column.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: ListView(
        children: [
          Lottie.asset(
            'images/lottie2.json',
            height: 220,
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text(
              'Create an account',
              style: TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 46, 71, 144),
                fontWeight: FontWeight.bold,
                fontFamily: 'pacifico',
              ),
            ),
          ),
          const CustomColumn(
            text: 'Name',
            hintText: 'Enter Your Name',
            prefixIcon: Icons.person_2_rounded,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomColumn(
            text: 'Phone',
            hintText: 'Enter Your Phone',
            prefixIcon: Icons.mobile_friendly_outlined,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomColumn(
            text: 'Email',
            hintText: 'Enter Your Email',
            prefixIcon: Icons.email,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomColumn(
            text: 'Password',
            hintText: 'Enter Your Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomColumn(
            text: 'Confirm Password',
            hintText: 'Enter Your Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: CustomButton(text: 'LOGIN'),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'already have an account? ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 46, 71, 144),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(' LOGIN',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
