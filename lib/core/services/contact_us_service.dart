import 'package:url_launcher/url_launcher.dart';

class ContactUsService {
  static Future<void> launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    final launched = await launchUrl(emailUri);
    if (!launched) {
      throw Exception('Could not launch email client');
    }
  }

  static Future<void> launchWhatsApp(String phoneNumber) async {
    final cleaned = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');
    final Uri whatsappUri = Uri.parse("https://wa.me/$cleaned");
    final launched = await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    if (!launched) {
      throw Exception('Could not launch WhatsApp');
    }
  }

  static Future<void> launchSocial(String url) async {
    final Uri socialUri = Uri.parse(url);
    final launched = await launchUrl(socialUri, mode: LaunchMode.externalApplication);
    if (!launched) {
      throw Exception('Could not launch $url');
    }
  }
}