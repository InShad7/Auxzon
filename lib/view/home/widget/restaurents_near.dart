import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/font_style.dart';

class RestaurentsNearWidget extends StatelessWidget {
  const RestaurentsNearWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Restaurents near you',
            style: AppFontStyle.font18BlackBoldPoppins,
          ),
          Text(
            'view all',
            style: AppFontStyle.regularGrey,
          )
        ],
      ),
    );
  }
}
