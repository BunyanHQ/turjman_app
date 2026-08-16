import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/theme.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_background.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../generated/l10n.dart';
import '../widgets/term_item.dart';
import '../widgets/term_section.dart';


class TermsOfServiceView extends StatelessWidget {
  const TermsOfServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomBackground(
      top: CustomAppBar(
        title: s.termsOfService,
        subTitle: s.termsLastUpdated,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _HeroSection(),
            SizedBox(height: 24.h),
            TermsSection(
              number: '01',
              title: s.acceptanceOfTermsTitle,
              content: s.acceptanceOfTermsContent,
              checklist: [s.acceptanceBullet1, s.acceptanceBullet2],
            ),
            SizedBox(height: 24.h),
            TermsSection(
              number: '02',
              title: s.licenseToUseTitle,
              content: s.licenseToUseContent,
              quote: s.licenseToUseQuote,
            ),
            SizedBox(height: 24.h),
            CustomText(
              text: s.prohibitedConductIntro,
              size: 13.sp,
              type: Type.overSmall,
              height: 1.6,
              maxLines: 5,
            ),
            SizedBox(height: 12.h),
            TermItem(
              icon: Icons.block,
              title: s.reverseEngineeringTitle,
              description: s.reverseEngineeringDescription,
            ),
            TermItem(
              icon: Icons.shield_outlined,
              title: s.securityBreachesTitle,
              description: s.securityBreachesDescription,
            ),
            TermItem(
              icon: Icons.smart_toy_outlined,
              title: s.automatedAccessTitle,
              description: s.automatedAccessDescription,
            ),
            TermItem(
              icon: Icons.gavel_outlined,
              title: s.illegalContentTitle,
              description: s.illegalContentDescription,
            ),
            SizedBox(height: 12.h),
            const _TransparencyBanner(),
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
          child: CustomText(text: s.termsUpdatedTag, size: 10.sp,
           type: Type.overSmall,maxLines: 2,),
        ),
        SizedBox(height: 10.h),
        CustomText(text: s.termsOfServiceTitle, size: 24.sp,
         type: Type.overMedium,maxLines: 3,),
        SizedBox(height: 8.h),
        CustomText(
          text: s.termsOfServiceDescription,
          size: 13.sp,
          type: Type.overSmall,
          height: 1.6,
          maxLines: 5,
        ),
      ],
    );
  }
}

class _TransparencyBanner extends StatelessWidget {
  const _TransparencyBanner();

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
          CustomText(text: s.committedToTransparency, size: 18.sp,
           type: Type.overMedium,maxLines: 3,),
          SizedBox(height: 6.h),
          CustomText(text: s.committedToTransparencySubtitle, size: 12.sp, 
          type: Type.overSmall,maxLines: 3,),
        ],
      ),
    );
  }
}