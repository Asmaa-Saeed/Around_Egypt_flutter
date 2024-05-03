import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/register.png',
            height: 299,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Around Egypt',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'pacifico',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 75,
          ),
          const Row(
            children: [
              Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            hintText: '   Name',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormTextField(
            hintText: '   Email',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormTextField(
            hintText: '  Phone Number',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormTextField(
            hintText: '   Password',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormTextField(
            hintText: '   Confirm Password',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomButton(text: 'REGISTER'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'already have an account? ',
                style: TextStyle(
                  fontSize: 14,
                  color:Color.fromARGB(255, 46, 71, 144),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(' LOGIN',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 113, 180, 239),
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
