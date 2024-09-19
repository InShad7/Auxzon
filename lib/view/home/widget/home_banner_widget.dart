import 'package:auxzon/view/utils/colors.dart';
import 'package:auxzon/view/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/font_style.dart';
import '../../widget/custom_btn.dart';
import 'location_widget.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: width * 0.80,
      padding: EdgeInsets.only(
        left: 16.w,
      ),
      decoration: const BoxDecoration(
        color: AppColors.red,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LocationWidget(),
              AppConstants.kHeight20,
              Text(
                'Promo buy 1 \nGet 1 more!',
                style: AppFontStyle.font30WhiteBoldPoppins,
              ),
              AppConstants.kHeight,
              SizedBox(
                width: width / 2.3,
                height: width / 8,
                child: CustomBtn(
                  title: 'Order Now',
                  color: AppColors.white,
                  fontstyle: AppFontStyle.font15RedBoldPoppins,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Positioned(
            right: -50.w,
            top: 60,
            child: SizedBox(
              width: width * 0.50,
              height: width * 0.86,
              child: Image.asset(
                'assets/images/image-5.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
