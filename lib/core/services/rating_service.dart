import 'package:url_launcher/url_launcher.dart';

class RatingService {
  static Future<void> sendFeedback({
    required int stars,
    required String feedback,
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'flutterdevt@gmail.com',
      queryParameters: {
        'subject': 'Turjuman App Rating: $stars/5 ⭐',
        'body': '''
Rating: ${'⭐' * stars} ($stars/5)
User Feedback:
$feedback
        ''',
      },
    );
    final launched = await launchUrl(emailUri);
    if (!launched) {
      throw Exception('Could not launch email client');
    }
  }
}