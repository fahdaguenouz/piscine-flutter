import 'package:flutter/material.dart';

void showNotificationsDialogBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Notifications'),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• New portfolio visit detected'),
          SizedBox(height: 8),
          Text('• 3 recruiters viewed your profile'),
          SizedBox(height: 8),
          Text('• CTF rank updated successfully'),
        ],
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