import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'curve_builder.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // log('width:$width');
    return Stack(
      children: [
        SizedBox(
          height: width >= 800 ? width / 1 : width / 0.74,
          width: width,
          child: Image.asset(
            'assets/images/image-3.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 500,
          left: 0,
          right: 0,
          bottom: 0,
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: AppColors.white,
              child: const SizedBox(),
            ),
          ),
        ),
      ],
    );
  }
}
