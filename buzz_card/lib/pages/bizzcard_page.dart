import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/info_row.dart';
import '../widgets/profile_section.dart';

class BizzCardPage extends StatelessWidget {
  const BizzCardPage({super.key});

  Future<void> _openPortfolio() async {
    final Uri url = Uri.parse('https://fahd-aguenouz.vercel.app/');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  void _showNotifications(BuildContext context) {
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

  void _handleMenuAction(BuildContext context, String value) {
    if (value == 'about') {
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
    } else if (value == 'portfolio') {
      _openPortfolio();
    } else if (value == 'contact') {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('BizzCard'),
        actions: [
          IconButton(
            onPressed: () => _showNotifications(context),
            icon: const Icon(Icons.notifications),
          ),
          PopupMenuButton<String>(
            onSelected: (value) => _handleMenuAction(context, value),
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'about',
                child: Text('About'),
              ),
              PopupMenuItem(
                value: 'portfolio',
                child: Text('Open portfolio'),
              ),
              PopupMenuItem(
                value: 'contact',
                child: Text('Contact info'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _openPortfolio,
                  child: const ProfileSection(),
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
                const InfoRow(
                  icon: Icons.phone,
                  text: '+212 770898733',
                ),
                const SizedBox(height: 10),
                const InfoRow(
                  icon: Icons.email,
                  text: 'faguenouz@gmail.com',
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