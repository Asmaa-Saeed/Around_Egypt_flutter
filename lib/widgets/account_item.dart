import 'dart:io';

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'custom_picker.dart';
import 'register_page_body.dart';
import 'small_button.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: kPrimaryColor.withOpacity(0.5),
          backgroundImage: image == null ? null : FileImage(File(image!.path)),
          radius: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? 'Defult User',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.grey.shade700),
            ),
            SizedBox(
              width: 160,
              child: Text(
                emailAddress ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 2,
        ),
        const SmallButton(
          iconData: Icons.arrow_forward_ios,
        )
      ],
    );
  }
}
