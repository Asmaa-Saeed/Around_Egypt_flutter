import 'package:around_egypt/constants/constants.dart';
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class CustomColumn extends StatelessWidget {
  final String text;

  final String hintText;
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const CustomColumn(
      {super.key,
      required this.text,
      required this.hintText,
      required this.prefixIcon,
      this.onChanged,
      this.validator,  this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                color:kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
        CustomTextFromField(
          prefixIcon: prefixIcon,
          hintText: hintText,
          onChanged: onChanged,
          validator: validator,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
