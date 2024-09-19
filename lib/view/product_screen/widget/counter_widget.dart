import 'package:auxzon/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../utils/colors.dart';
import '../../utils/font_style.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 3.2,
      padding: width >= 800 ? EdgeInsets.all(3.w) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: AppColors.red,
      ),
      child: Consumer<ProductController>(
        builder: (context, provider, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                provider.decrementCount();
              },
              icon: Icon(
                Icons.remove,
                color: AppColors.white,
                size: width >= 800 ? 35 : 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0.w),
              child: Text(
                provider.count.toString(),
                style: AppFontStyle.font18WhiteBold,
              ),
            ),
            IconButton(
              onPressed: () {
                provider.incrementCount();
              },
              icon: Icon(
                Icons.add,
                color: AppColors.white,
                size: width >= 800 ? 35 : 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
