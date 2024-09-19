import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import 'top_option_widget.dart';

class ProductTopWidget extends StatelessWidget {
  const ProductTopWidget({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: width / 1.3,
          decoration: const BoxDecoration(color: AppColors.lightGrey),
          child: Stack(
            children: [
              const TopOptionWidget(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    ),
                    color: AppColors.white,
                  ),
                  child: const Text(' \n \n '),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 70,
          right: 0,
          bottom: -57,
          left: 0,
          child: Container(
            margin: EdgeInsets.all(45.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBox(),
          ),
        ),
      ],
    );
  }
}
