import 'package:flutter/material.dart';

void showContactDialogBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Contact info'),
      content: const Text(
        'Email: faguenouz@gmail.com\nPhone: +212 770898733',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    ),
  );
}