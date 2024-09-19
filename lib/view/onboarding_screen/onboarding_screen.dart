import 'package:auxzon/view/home/widget/bottom_nav_bar.dart';
import 'package:auxzon/view/utils/colors.dart';
import 'package:auxzon/view/utils/constants.dart';
import 'package:auxzon/view/utils/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_btn.dart';
import 'widget/onboarding_image.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const OnBoardingImage(),
            RichText(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              text: TextSpan(
                text: 'The Fastest In\nDelivery ',
                style: AppFontStyle.font20BlackBold,
                children: [
                  TextSpan(
                    text: ' Food',
                    style: AppFontStyle.font20RedBold,
                  ),
                ],
              ),
            ),
            AppConstants.kHeight20,
            SizedBox(
              width: width / 1.7,
              child: Text(
                'Our jo is to filling your tummy with delicious food and fast delivery.',
                style: AppFontStyle.regularGrey,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            AppConstants.kHeight50,
            Container(
              color: AppColors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
              height: MediaQuery.of(context).size.width / 5.3,
              child: CustomBtn(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ),
                    (route) => false,
                  );
                },
                color: AppColors.red,
                fontstyle: AppFontStyle.font18WhiteBoldPoppins,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
