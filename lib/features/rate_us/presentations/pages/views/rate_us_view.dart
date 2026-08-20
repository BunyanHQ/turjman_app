import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_background.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/rate_us_body.dart';

class RateUsView extends StatelessWidget {
  const RateUsView({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return CustomBackground(
      top: CustomAppBar(
        title: s.rateUs,
        subTitle: s.rateUsSubtitle,
      ),
      body: const RateUsBody(),
    );
  }
}