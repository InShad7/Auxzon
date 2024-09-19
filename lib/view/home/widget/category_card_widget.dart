import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/font_style.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    this.isCategory = false,
  });
  final String title;
  final String icon;
  final bool isCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.grey,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.lightRed,
            radius: 30.r,
            child: isCategory
                ? const Icon(
                    Icons.dashboard_outlined,
                    color: AppColors.black,
                  )
                : Image.asset(
                    icon,
                    scale: 6,
                  ),
          ),
          AppConstants.kHeight5,
          Text(
            title,
            style: AppFontStyle.font14RedW400Poppins,
          ),
        ],
      ),
    );
  }
}
