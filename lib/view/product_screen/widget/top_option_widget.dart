import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class TopOptionWidget extends StatelessWidget {
  const TopOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const TopIconWidget(
                icon: Icons.arrow_back_ios_new,
              ),
            ),
            const TopIconWidget(
              icon: Icons.more_horiz_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class TopIconWidget extends StatelessWidget {
  const TopIconWidget({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Icon(
        icon,
        color: AppColors.red,
      ),
    );
  }
}
