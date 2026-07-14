import 'package:flutter/material.dart';
import '../dialogs/about_dialog.dart';
import '../dialogs/contact_dialog.dart';
import '../dialogs/notifications_dialog.dart';
import '../services/portfolio_launcher.dart';

class BizzCardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BizzCardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _handleMenuAction(BuildContext context, String value) {
    if (value == 'about') {
      showAboutDialogBox(context);
    } else if (value == 'portfolio') {
      openPortfolio();
    } else if (value == 'contact') {
      showContactDialogBox(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text('BizzCard'),
      actions: [
        IconButton(
          onPressed: () => showNotificationsDialogBox(context),
          icon: const Icon(Icons.notifications),
        ),
        PopupMenuButton<String>(
          onSelected: (value) => _handleMenuAction(context, value),
          itemBuilder: (context) => const [
            PopupMenuItem(value: 'about', child: Text('About')),
            PopupMenuItem(value: 'portfolio', child: Text('Open portfolio')),
            PopupMenuItem(value: 'contact', child: Text('Contact info')),
          ],
        ),
      ],
    );
  }
}