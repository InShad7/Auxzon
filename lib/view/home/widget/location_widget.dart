import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/font_style.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Location',
          style: AppFontStyle.font18WhiteThin,
        ),
        AppConstants.kHeight5,
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 22.r,
              color: AppColors.white,
            ),
            Text(
              'ST, Abigael',
              style: AppFontStyle.font18WhiteBold,
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 22.r,
              color: AppColors.white,
            )
          ],
        ),
      ],
    );
  }
}
