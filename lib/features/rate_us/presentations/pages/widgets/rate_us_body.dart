import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/services/rating_service.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../generated/l10n.dart';


class RateUsBody extends StatefulWidget {
  const RateUsBody({super.key});

  @override
  State<RateUsBody> createState() => _RateUsBodyState();
}

class _RateUsBodyState extends State<RateUsBody> {
  int _selectedStars = 4;
  bool _isSubmitting = false;
  final TextEditingController _feedbackController = TextEditingController();

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Card(
          color: isDark ? Colors.grey.shade800 : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.asset(
                    'assets/lotties/Rating.json',
                    width: double.infinity,
                    height: 150.h,
                    fit: BoxFit.fill,
                  ),
                ),
                CustomText(
                  text: S.current.enjoyingApp,
                  size: 24.sp,
                  type: Type.header,
                  color: isDark ? Colors.white70 :Colors.blue,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                CustomText(
                  text: S.current.rateUsSubtitle,
                  size: 13.sp,
                  type: Type.overSmall,
                  opacity: FontOpacity.medium,
                  color: isDark ? Colors.white70 : Colors.black,
                  textAlign: TextAlign.center,
                  height: 1.6,
                ),
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    final starIndex = index + 1;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedStars = starIndex),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Icon(
                          starIndex <= _selectedStars
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded,
                          size: 40.r,
                          color: starIndex <= _selectedStars
                              ? const Color(0xFFFFC107)
                              : Colors.grey.shade300,
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 28.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: S.current.tellUsWhatYouThink,
                    size: 12.sp,
                    type: Type.overSmall,
                    opacity: FontOpacity.medium,
                    color: isDark ? Colors.white70 : Colors.black,
                    letterSpacing: 0.8,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  decoration: BoxDecoration(
                    color: isDark ? Colors.grey.shade700 : Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: TextField(
                    controller: _feedbackController,
                    maxLines: 5,
                    style: TextStyle(fontSize: 13.sp, color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: S.current.yourThoughtsMakeUsBetter,
                      hintStyle: TextStyle(fontSize: 13.sp, color: Colors.grey.shade400),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.r),
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: _isSubmitting ? null : _onSubmit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      elevation: 0,
                    ),
                    child: _isSubmitting
                        ? SizedBox(
                            width: 20.r,
                            height: 20.r,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          )
                        : CustomText(
                            text: S.current.submit,
                            size: 15.sp,
                            type: Type.overMedium,
                            color: Colors.white,
                          ),
                  ),
                ),
                SizedBox(height: 12.h),
                TextButton(
                  onPressed: () => Navigator.maybePop(context),
                  child: CustomText(
                    text: S.current.maybeLater,
                    size: 14.sp,
                    type: Type.overMedium,
                    opacity: FontOpacity.medium,
                    color: isDark ? Colors.white70 : Colors.black,
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onSubmit() async {
    if (_selectedStars == 0) return;
    setState(() => _isSubmitting = true);
    try {
      await RatingService.sendFeedback(
        stars: _selectedStars,
        feedback: _feedbackController.text.trim().isEmpty
            ? 'No feedback provided'
            : _feedbackController.text.trim(),
      );
      if (mounted) Navigator.maybePop(context);
    } catch (e) {
      if (mounted) {
        setState(() => _isSubmitting = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }
}