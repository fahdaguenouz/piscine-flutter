import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const BizzCardApp());
}

class BizzCardApp extends StatelessWidget {
  const BizzCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BizzCard',
      home: const BizzCardPage(),
    );
  }
}

class BizzCardPage extends StatelessWidget {
  const BizzCardPage({super.key});

  Future<void> _openPortfolio() async {
    final Uri url = Uri.parse('https://fahd-aguenouz.vercel.app/');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('BizzCard'),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Fahd',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Aguenouz',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Age: 22',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 8),
                    Text(
                      '+212 770898733',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 8),
                    Text(
                      'faguenouz@gmail.com',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Scan or tap the QR code to open my portfolio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: _openPortfolio,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/portfolio.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: _openPortfolio,
                  icon: const Icon(Icons.open_in_new),
                  label: const Text('Open Portfolio'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}