import 'package:auxzon/view/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/font_style.dart';

class TopRatedFoodCard extends StatelessWidget {
  const TopRatedFoodCard({
    super.key,
    required this.imgURL,
    required this.title,
    required this.shopName,
    required this.amount,
    required this.rating,
  });

  final String imgURL;
  final String title;
  final String shopName;
  final String amount;
  final String rating;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 2.2,
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.only(right: 5.w, top: 5.w, bottom: 5.w, left: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: width / 3.8,
                width: width / 2.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: AssetImage(imgURL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: width / 40,
                left: width / 40,
                right: width / 4,
                bottom: width / 5.3,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.orange,
                        size: width / 24,
                      ),
                      Text('($rating)'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          AppConstants.kHeight,
          Text(
            title,
            style: AppFontStyle.font14BlackBoldPoppins,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                shopName,
                style: AppFontStyle.font15Grey,
              ),
              Text(
                '\$ $amount',
                style: AppFontStyle.font14BlackBoldPoppins,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
