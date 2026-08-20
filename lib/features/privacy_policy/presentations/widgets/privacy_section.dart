import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/utils/theme.dart';
import '../../../../core/widgets/custom_text.dart';

class PrivacySection extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String tag;
  final String title;
  final String content;
  final String? quote;
  final List<String>? bullets;

  const PrivacySection({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.tag,
    required this.title,
    required this.content,
    this.quote,
    this.bullets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(icon, color: iconColor, size: 16.sp),
              ),
              SizedBox(width: 10.w),
              CustomText(
                text: tag,
                size: 10.sp,
                type: Type.overSmall,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CustomText(
            text: title,
            size: 16.sp,
            type: Type.overMedium,
          ),
          SizedBox(height: 8.h),
          CustomText(
            text: content,
            size: 12.sp,
            type: Type.overSmall,
            maxLines: 4,
          ),
          if (quote != null) ...[
            SizedBox(height: 12.h),
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: AppTheme.secondaryBlue,
                    width: 3.w,
                  ),
                ),
                color: AppTheme.secondaryBlue.withValues(alpha: 0.05),
              ),
              child: CustomText(
                text: '"$quote"',
                size: 12.sp,
                type: Type.overSmall,
                maxLines: 3,
              ),
            ),
          ],
          if (bullets != null) ...[
            SizedBox(height: 12.h),
            ...bullets!.map((bullet) => Padding(
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          width: 6.w,
                          height: 6.w,
                          decoration: BoxDecoration(
                            color: AppTheme.secondaryBlue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: CustomText(
                          text: bullet,
                          size: 12.sp,
                          type: Type.overSmall,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ],
      ),
    );
  }
}