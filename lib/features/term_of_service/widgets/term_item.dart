import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text.dart';

class TermItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const TermItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18.sp, color: Colors.red),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: title, size: 13.sp, type: Type.overMedium,maxLines: 4,),
                SizedBox(height: 4.h),
                CustomText(
                  text: description,
                  size: 11.sp,
                  type: Type.overSmall,
                  maxLines: 6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}