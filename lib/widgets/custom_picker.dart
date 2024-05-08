import 'dart:io';

import 'package:around_egypt/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

XFile? image;

class CustomPicker extends StatefulWidget {
  const CustomPicker({super.key});

  @override
  CustomPickerState createState() => CustomPickerState();
}

class CustomPickerState extends State<CustomPicker> {
  String? _animal;

  bool isUploaded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor.withOpacity(0.5),
              backgroundImage:
                  image == null ? null : FileImage(File(image!.path)),
              radius: 85,
            ),
            Positioned(
              right: 5,
              bottom: 10,
              child: GestureDetector(
                onTap: _pickImage,
                child: const Icon(
                  Icons.camera_alt,
                  color:kPrimaryColor,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Visibility(
          visible: !isUploaded,
          child: const Text(
            'Upload your Profile Picture',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'pacifico',
            ),
          ),
        ),
      ],
    );
  }

  void _pickImage() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.gallery);
    isUploaded = true;
    setState(() {});
    if (image != null) {
      _animal = await _getAnimal(image!);
      setState(() {});
    }
  }

  Future<String?> _getAnimal(XFile file) async {
    return null;
  }
}
