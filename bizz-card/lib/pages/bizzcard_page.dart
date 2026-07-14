import 'package:flutter/material.dart';
import '../widgets/bizzcard_appbar.dart';
import '../widgets/info_row.dart';
import '../widgets/profile_section.dart';
import '../services/portfolio_launcher.dart';

class BizzCardPage extends StatelessWidget {
  const BizzCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BizzCardAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: openPortfolio,
                  child: const ProfileSection(),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Fahd',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Aguenouz',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text('Age: 22', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                const InfoRow(icon: Icons.phone, text: '+212 770898733'),
                const SizedBox(height: 10),
                const InfoRow(icon: Icons.email, text: 'faguenouz@gmail.com'),
                const SizedBox(height: 25),
                const Text(
                  'Scan or tap the QR code to open my portfolio',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: openPortfolio,
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
                  onPressed: openPortfolio,
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