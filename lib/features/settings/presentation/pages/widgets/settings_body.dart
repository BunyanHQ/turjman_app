import '../../../../../core/widgets/custom_text.dart';
import '../../../../contact_us/presentations/pages/views/contact_us_view.dart';
import '../../../../help_centre/views/help_center_view.dart';
import '../../../../privacy_policy/presentations/views/privacy_policy_view.dart';
import '../../../../rate_us/presentations/pages/views/rate_us_view.dart';
import 'app_card.dart';
import 'theme_item.dart';
import 'settings_item.dart';
import 'settings_title.dart';
import 'package:flutter/material.dart';
import '../views/app_language_view.dart';
import '../../manager/settings_cubit.dart';
import '../../../models/app_user_pref.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/services/icon_broken.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../offline_languages/presentation/pages/views/offline_languages_view.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    var cubit = SettingsCubit.get(context);
    return SingleChildScrollView(
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsTitle(title: s.personalization),
          const ThemeItem(),
          SettingsItem(
            icon: IconBroken.Swap,
            title: s.languageTitle,
            iconColor: Colors.purple,
            subtitle: s.languageSubtitle,
            navigationPage: const AppLanguageView(),
          ),
          SettingsTitle(title: s.dataAndStorage),
          SettingsItem(
            icon: IconBroken.Download,
            iconColor: Colors.green,
            title: s.offlineLanguagesTitle,
            subtitle: s.offlineLanguagesSubtitle,
            navigationPage: const OfflineLanguagesView(),
          ),
          BlocBuilder<SettingsCubit, AppUserPref>(
            builder: (context, state) => SettingsItem(
              icon: Icons.wifi,
              isSwitch: true,
              iconColor: Colors.orange,
              title: s.downloadFrowWifiOnlyTitle,
              subtitle: s.downloadFrowWifiOnlySubtitle,
              switchValue: cubit.state.downloadOverWiFiOnly,
              onSwitchChanged: (value) => cubit.toggleDownloadOverWiFiOnly(),
            ),
          ),
          SettingsTitle(title: s.support),
          SettingsItem(
            icon: IconBroken.Message,
            title: s.contactUsTitle,
            iconColor: Colors.blue,
            subtitle: s.contactUsSubtitle,
            navigationPage: const ContactUsView(),
          ),
          SettingsItem(
            icon: IconBroken.Star,
            iconColor: Colors.yellow,
            title: s.rateUs,
            subtitle: s.rateUsSubtitle,
            navigationPage: const RateUsView(),
          ),
          SettingsItem(
            icon: IconBroken.Info_Circle,
            iconColor: Colors.teal,
            title: s.helpCenter,
            subtitle: s.howCanWeHelp,
            navigationPage: const HelpCenterView(),
          ),
          SizedBox(height: 24.h),
          const AppCard(),
          SizedBox(height: 16.h),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrivacyPolicyView()),
                  ),
                  child: CustomText(
                    text: s.privacyPolicy,
                    size: 14.sp,
                    type: Type.overSmall,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 16.w),
               CustomText(
                  text: s.termsOfService,
                  size: 14.sp,
                  type: Type.overSmall,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}