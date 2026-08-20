import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turjman_app/features/help_centre/widgets/feq_item.dart' show FaqItem;
import '../../../core/widgets/custom_text.dart';
import '../../../generated/l10n.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  List<Map<String, dynamic>> getFaqs(S s) => [
    {
      "icon": Icons.wifi_off,
      "question": s.faqOfflineModeQuestion,
      "answers": [s.faqOfflineModeAnswer1, s.faqOfflineModeAnswer2, s.faqOfflineModeAnswer3],
    },
    {
      "icon": Icons.image_outlined,
      "question": s.faqTranslateImagesQuestion,
      "answers": [s.faqTranslateImagesAnswer1, s.faqTranslateImagesAnswer2, s.faqTranslateImagesAnswer3],
    },
    {
      "icon": Icons.sync,
      "question": s.faqSyncingQuestion,
      "answers": [s.faqSyncingAnswer1, s.faqSyncingAnswer2, s.faqSyncingAnswer3],
    },
    {
      "icon": Icons.workspace_premium_outlined,
      "question": s.faqPremiumQuestion,
      "answers": [s.faqPremiumAnswer1, s.faqPremiumAnswer2, s.faqPremiumAnswer3],
    },
    {
      "icon": Icons.language,
      "question": s.faqLanguagesQuestion,
      "answers": [s.faqLanguagesAnswer1, s.faqLanguagesAnswer2, s.faqLanguagesAnswer3],
    },
    {
      "icon": Icons.mic_none,
      "question": s.faqVoiceQuestion,
      "answers": [s.faqVoiceAnswer1, s.faqVoiceAnswer2, s.faqVoiceAnswer3],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final faqs = getFaqs(S.current);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: S.current.frequentlyAsked,
            size: 25.sp,
            type: Type.overMedium,
          ),
          SizedBox(height: 12.h),
          ...faqs.map((faq) => FaqItem(
                icon: faq["icon"],
                question: faq["question"]!,
                answers: List<String>.from(faq["answers"]!),
              )),
        ],
      ),
    );
  }
}