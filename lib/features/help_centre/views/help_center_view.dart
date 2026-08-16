import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/theme.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_background.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../generated/l10n.dart';
import '../../contact_us/presentations/pages/views/contact_us_view.dart';
import '../widgets/feq_section.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return CustomBackground(
      top: CustomAppBar(
        title: s.helpCenter,
        subTitle: s.howCanWeHelp,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FaqSection(),
              SizedBox(height: 8.h),
              const _ContactSupportBanner(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContactSupportBanner extends StatelessWidget {
  const _ContactSupportBanner();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.secondaryBlue,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: S.current.stillNeedHelp,
              size: 18.sp,
              type: Type.overMedium,
              color: Colors.white,
            ),
            SizedBox(height: 6.h),
            CustomText(
              text: S.current.stillNeedHelpSubtitle,
              size: 12.sp,
              type: Type.overSmall,
              color: Colors.white70,
            ),
            SizedBox(height: 16.h),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUsView()),
                );
              },
              icon: Icon(Icons.headset_mic_outlined, size: 16.sp),
              label: Text(S.current.contactSupport, style: TextStyle(fontSize: 13.sp)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppTheme.secondaryBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}