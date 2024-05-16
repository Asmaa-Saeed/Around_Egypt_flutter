import 'dart:developer';

import 'package:around_egypt/cubits/login_cubit/login_cubit.dart';
import 'package:around_egypt/pages/home_page.dart';
import 'package:around_egypt/widgets/custom_button.dart';
import 'package:around_egypt/widgets/custom_column.dart';
import 'package:around_egypt/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../cubits/login_cubit/login_state.dart';
import '../pages/register_page.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  String? emailAddress;

  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailureState) {
          showSnackBar(context, state.errorMessage, true);
        } else if (state is LoginSuccessState) {
          showSnackBar(context, 'Login done successfully !', false);
          Navigator.pushReplacementNamed(
            context,
            HomePage.id,
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 90),
            child: Column(
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
                CustomColumn(
                  text: 'Email',
                  hintText: 'Enter Your Email',
                  prefixIcon: Icons.email,
                  onChanged: (value) {
                    emailAddress = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomColumn(
                  text: 'Password',
                  hintText: 'Enter Your Password',
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_off,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: CustomButton(
                        isLoading: state is LoginLoadingState ? true : false,
                        text: 'LOGIN',
                        onTap: () {
                          log(emailAddress!);
                          BlocProvider.of<LoginCubit>(context).login(
                            userData: {
                              "email": emailAddress!,
                              "password": password!
                            },
                          );
                        },
                      ),
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
                        fontFamily: 'Jet',
                        fontSize: 12,
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
                            fontFamily: 'Jet',
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                // MaterialButton(
                //     onPressed: () async {
                //     },
                //     child: const Text('Try'))
              ],
            ),
          ),
        );
      },
    );
  }
}
