import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/services/contact_us_service.dart';
import '../../../../../core/utils/theme.dart' show AppTheme;
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/model/contact_us_model.dart';

class SocialMediaSection extends StatelessWidget {
  final ContactModel contact;
  const SocialMediaSection({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: S.current.socialMedia, size: 14.sp, type: Type.overMedium),
          SizedBox(height: 12.h),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                SocialItem(
                  onTap: () => ContactUsService.launchSocial(contact.instagram),
                  color: const Color(0xFFE1306C),
                  icon: FontAwesomeIcons.instagram,
                  label: S.current.instagram,
                  value: contact.instagram,
                  showDivider: true,
                ),
                SocialItem(
                  onTap: () => ContactUsService.launchSocial(contact.twitter),
                  color: const Color(0xFF1DA1F2),
                  icon: FontAwesomeIcons.twitter,
                  label: S.current.twitter,
                  value: contact.twitter,
                  showDivider: true,
                ),
                SocialItem(
                  onTap: () => ContactUsService.launchSocial(contact.facebook),
                  color: const Color(0xFF1877F2),
                  icon: FontAwesomeIcons.facebook,
                  label: S.current.facebook,
                  value: contact.facebook,
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

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool showDivider;
  final VoidCallback onTap;

  const ContactItem({super.key, 
    required this.icon,
    required this.label,
    required this.value,
    required this.showDivider,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppTheme.secondaryBlue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(icon, color: AppTheme.secondaryBlue, size: 18.sp),
                ),
                SizedBox(width: 14.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: label, size: 14.sp, type: Type.overMedium),
                    SizedBox(height: 2.h),
                    CustomText(text: value, size: 13.sp, type: Type.overMedium),
                  ],
                ),
              ],
            ),
          ),
          if (showDivider)
            Divider(height: 1, color: Colors.grey.shade200, indent: 16.w, endIndent: 16.w),
        ],
      ),
    );
  }
}

class SocialItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final String value;
  final bool showDivider;
  final VoidCallback onTap;

  const SocialItem({super.key, 
    required this.color,
    required this.icon,
    required this.label,
    required this.value,
    required this.showDivider,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(icon, color: color, size: 18.sp),
                ),
                SizedBox(width: 14.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: label, size: 14.sp, type: Type.overMedium),
                    SizedBox(height: 2.h),
                    CustomText(text: value, size: 13.sp, type: Type.overMedium),
                  ],
                ),
              ],
            ),
          ),
          if (showDivider)
            Divider(height: 1, color: Colors.grey.shade200, indent: 16.w, endIndent: 16.w),
        ],
      ),
    );
  }
}