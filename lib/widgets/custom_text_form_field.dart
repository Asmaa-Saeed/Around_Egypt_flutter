import 'package:around_egypt/constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFromField extends StatefulWidget {
  CustomTextFromField(
      {super.key,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.keyboardType,
      this.enabled = true,
      this.onChanged,
      this.labelText});
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? labelText;
  final void Function(String)? onChanged;
  bool? obscureText;
  final String? hintText;
  final double iconSize = 16;
  final Color iconColor = kPrimaryColor;
  bool? enabled;
  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}

class _CustomTextFromFieldState extends State<CustomTextFromField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        //inputFormatters: [],
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.obscureText!,
        decoration: InputDecoration(
            labelText: widget.labelText,
            prefixIcon: Icon(
              widget.prefixIcon,
              size: widget.iconSize,
              color: kPrimaryColor,
            ),
            suffixIcon: widget.suffixIcon != null
                ? IconButton(
                    icon: widget.obscureText!
                        ? Icon(
                            Icons.visibility_off,
                            size: widget.iconSize,
                          )
                        : Icon(
                            Icons.visibility,
                            size: widget.iconSize,
                          ),
                    color: kPrimaryColor,
                    onPressed: () {
                      setState(() {
                        widget.obscureText = !widget.obscureText!;
                      });
                    },
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF919AAB),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kPrimaryColor),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kPrimaryColor))),
      ),
    );
  }
}
