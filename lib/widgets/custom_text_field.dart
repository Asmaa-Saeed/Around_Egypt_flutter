import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  final bool obscureText;
  const CustomFormTextField(
      {super.key, this.hintText, this.onChanged, this.obscureText = false});
  final Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color:  Color.fromARGB(255, 110, 161, 188),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color:  Color.fromARGB(255, 46, 71, 144),
          )),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
          )),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromARGB(255, 46, 71, 144)
          )),
        ));
  }
}
