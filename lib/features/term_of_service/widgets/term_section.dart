import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/theme.dart';
import '../../../core/widgets/custom_text.dart';

class TermsSection extends StatelessWidget {
  final String number;
  final String title;
  final String content;
  final List<String>? checklist;
  final String? quote;

  const TermsSection({
    super.key,
    required this.number,
    required this.title,
    required this.content,
    this.checklist,
    this.quote,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: number,
              size: 20.sp,
              type: Type.header,
              color: AppTheme.secondaryBlue.withValues(alpha: 0.4),
              maxLines: 5,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: CustomText(
                text: title,
                size: 18.sp,
                type: Type.overMedium,
                maxLines: 5,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        CustomText(
          text: content,
          size: 13.sp,
          type: Type.overSmall,
          height: 1.6,
          maxLines: 5,
        ),
        if (checklist != null) ...[
          SizedBox(height: 12.h),
          ...checklist!.map((item) => Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.check_circle, size: 16.sp, color: AppTheme.secondaryBlue),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: CustomText(
                        text: item,
                        size: 13.sp,
                        type: Type.overSmall,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              )),
        ],
        if (quote != null) ...[
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: AppTheme.secondaryBlue, width: 3.w),
              ),
              color: AppTheme.secondaryBlue.withValues(alpha: 0.05),
            ),
            child: CustomText(
              text: '"$quote"',
              size: 12.sp,
              type: Type.overSmall,
              maxLines: 4,
            ),
          ),
        ],
      ],
    );
  }
}