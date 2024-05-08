import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 46, 71, 144),
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 45,
        child: isLoading
            ? const SpinKitDualRing(
                color: Colors.white,
                lineWidth: 2,
                size: 30,
              )
            : Center(
                child: Text(text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(235, 253, 254, 255),
                      fontWeight: FontWeight.bold,
                    ))),
      ),
    );
  }
}
