import 'package:flutter/material.dart';

class TimerBar extends StatelessWidget {
  final int seconds;

  const TimerBar({
    super.key,
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          "$seconds s",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        LinearProgressIndicator(
          value: seconds / 15,
          minHeight: 10,
        ),
      ],
    );
  }
}