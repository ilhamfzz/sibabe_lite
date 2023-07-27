import 'package:url_launcher/url_launcher.dart';

class LaunchURL {
  static Future<void> launch(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await canLaunchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
    await launchUrl(uri);
  }
}