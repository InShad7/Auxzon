import 'package:auxzon/view/utils/colors.dart';
import 'package:auxzon/view/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/category_widget.dart';
import 'widget/home_banner_widget.dart';
import 'widget/restaurents_near.dart';
import 'widget/search_widget.dart';
import 'widget/top_rated_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const HomeBannerWidget(),
                Container(
                  margin: EdgeInsets.only(left: 16.w, top: 10.w),
                  color: AppColors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppConstants.kHeight35,
                      const CategoryRowWidget(),
                      AppConstants.kHeight20,
                      const TopRatedWidget(),
                      AppConstants.kHeight20,
                      const RestaurentsNearWidget(),
                      AppConstants.kHeight50,
                    ],
                  ),
                ),
              ],
            ),
            const SearchWidget()
          ],
        ),
      ),
    );
  }
}
