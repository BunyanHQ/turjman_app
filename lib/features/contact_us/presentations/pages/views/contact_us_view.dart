import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/di/server_locator.dart';
import '../../../../../core/services/contact_us_service.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_background.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/model/contact_us_model.dart';
import '../../../data/repo/contact_repo.dart';
import '../widgets/social_media_section.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      top: const _Top(),
      body: FutureBuilder<ContactModel>(
        future: getIt<ContactRepository>().getContactInfo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: CustomText(text: snapshot.error.toString(), size: 13.sp, type: Type.overSmall),
            );
          }
          final contact = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _HeroSection(),
                SizedBox(height: 24.h),
                _CustomerSupportSection(contact: contact),
                SizedBox(height: 16.h),
                SocialMediaSection(contact: contact),
                SizedBox(height: 32.h),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top();

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return CustomAppBar(
      title: s.contactUs,
      subTitle: s.contactUsSubtitle,
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: CustomText(
        text: S.current.contactUsDescription,
        size: 13.sp,
        type: Type.overSmall,
        maxLines: 3,
      ),
    );
  }
}

class _CustomerSupportSection extends StatelessWidget {
  final ContactModel contact;
  const _CustomerSupportSection({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: S.current.customerSupport, size: 14.sp, type: Type.overMedium),
          SizedBox(height: 12.h),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                ContactItem(
                  onTap: () => ContactUsService.launchWhatsApp(contact.whatsapp),
                  icon: FontAwesomeIcons.whatsapp,
                  label: S.current.contactNumber,
                  value: contact.whatsapp,
                  showDivider: true,
                ),
                ContactItem(
                  onTap: () => ContactUsService.launchEmail(contact.email),
                  icon: FontAwesomeIcons.envelope,
                  label: S.current.emailAddress,
                  value: contact.email,
                  showDivider: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}