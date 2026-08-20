import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/theme.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../generated/l10n.dart';
import '../widgets/privacy_section.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomBackground(
      top: CustomAppBar(
        title: s.privacyPolicy,
        subTitle: s.lastUpdated,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _HeroSection(),
            SizedBox(height: 24.h),
            PrivacySection(
              icon: Icons.storage_outlined,
              iconColor: Colors.blue,
              tag: s.processingStorageTag,
              title: s.dataCollectionTitle,
              content: s.dataCollectionContent,
              quote: s.dataCollectionQuote,
            ),
            SizedBox(height: 16.h),
            const _SecureByDesignCard(),
            SizedBox(height: 16.h),
            PrivacySection(
              icon: Icons.download_outlined,
              iconColor: Colors.orange,
              tag: s.offlineModeTag,
              title: s.offlineUsageTitle,
              content: s.offlineUsageContent,
            ),
            SizedBox(height: 16.h),
            PrivacySection(
              icon: Icons.mic_none,
              iconColor: Colors.red,
              tag: s.audioInputTag,
              title: s.microphoneAccessTitle,
              content: s.microphoneAccessContent,
              bullets: [s.microphoneBullet1, s.microphoneBullet2],
            ),
            SizedBox(height: 16.h),
            PrivacySection(
              icon: Icons.people_outline,
              iconColor: Colors.purple,
              tag: s.dataSharingTag,
              title: s.thirdPartyTitle,
              content: s.thirdPartyContent,
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    final s = S.current;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppTheme.secondaryBlue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: CustomText(text: s.legalDocumentation, size: 10.sp, type: Type.overSmall),
        ),
        SizedBox(height: 10.h),
        CustomText(text: s.privacyPolicyTitle, size: 32.sp, type: Type.overMedium),
        SizedBox(height: 6.h),
        CustomText(text: s.lastUpdated, size: 11.sp, type: Type.overSmall),
      ],
    );
  }
}

class _SecureByDesignCard extends StatelessWidget {
  const _SecureByDesignCard();

  @override
  Widget build(BuildContext context) {
    final s = S.current;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: AppTheme.secondaryBlue,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: s.secureByDesign, size: 18.sp, type: Type.overMedium),
          SizedBox(height: 6.h),
          CustomText(text: s.secureByDesignSubtitle, size: 12.sp, type: Type.overSmall),
        ],
      ),
    );
  }
}