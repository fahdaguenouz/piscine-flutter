import 'package:url_launcher/url_launcher.dart';

Future<void> openPortfolio() async {
  final Uri url = Uri.parse('https://fahd-aguenouz.vercel.app/');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}