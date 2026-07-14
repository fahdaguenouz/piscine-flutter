import 'package:flutter/material.dart';

void showAboutDialogBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('About'),
      content: const Text(
        'This is a static BizzCard app built with Flutter to display personal information',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}