import 'package:around_egypt/cubits/register_cubit/register_cubit.dart';
import 'package:around_egypt/pages/home_page.dart';
import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_picker.dart';
import 'package:around_egypt/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/register_cubit/register_state.dart';
import 'custom_column.dart';

// global variables for the register page
String? emailAddress;
String? name;
String? confirmPassword;
String? password;
String? phone;

class RegisterPageBody extends StatefulWidget {
  const RegisterPageBody({super.key, s});

  @override
  State<RegisterPageBody> createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<RegisterPageBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterFailureState) {
          showSnackBar(context, state.errorMessage, true);
        } else if (state is RegisterSuccessState) {
          showSnackBar(context, 'Register done successfully !', false);
          Navigator.pushReplacementNamed(context, HomePage.id);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  const CustomPicker(),
                  const SizedBox(
                    height: 12,
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
                  CustomColumn(
                    text: 'Name',
                    hintText: 'Enter Your Name',
                    prefixIcon: Icons.person_2_rounded,
                    onChanged: (p0) {
                      name = p0;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomColumn(
                    text: 'Phone',
                    keyboardType: TextInputType.phone,
                    hintText: 'Enter Your Phone',
                    prefixIcon: Icons.mobile_friendly_outlined,
                    onChanged: (p0) => phone = p0,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomColumn(
                    text: 'Email',
                    hintText: 'Enter Your Email',
                    prefixIcon: Icons.email,
                    onChanged: (p0) => emailAddress = p0,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomColumn(
                    text: 'Password',
                    hintText: 'Enter Your Password',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility_off,
                    onChanged: (p0) => password = p0,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomColumn(
                    text: 'Confirm Password',
                    hintText: 'Enter Your Password',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility_off,
                    onChanged: (p0) => confirmPassword = p0,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 10),
                    child: CustomButton(
                      isLoading: state is RegisterLoadingState ? true : false,
                      text: 'Register',
                      onTap: () async {
                        Map<String, dynamic> userData = {
                          'name': name,
                          'email': emailAddress,
                          'password': password,
                        };

                        await BlocProvider.of<RegisterCubit>(context)
                            .register(userData: userData);
                      },
                    ),
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
                            fontSize: 12,
                            fontFamily: 'Jet',
                            color: Color.fromARGB(255, 46, 71, 144),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(' LOGIN',
                              style: TextStyle(
                                fontFamily: 'Jet',
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
