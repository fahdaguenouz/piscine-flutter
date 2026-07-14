import 'package:flutter/material.dart';

import 'category_page.dart';

class UsernamePage extends StatefulWidget {
  const UsernamePage({super.key});

  @override
  State<UsernamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void startExam() {
    String username = controller.text.trim();

    if (username.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your username"),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryPage(
          username: username,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 100,
              color: Colors.blue,
            ),

            const SizedBox(height: 30),

            const Text(
              "Enter your username",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: startExam,
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}