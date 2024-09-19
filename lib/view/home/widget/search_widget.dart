import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      top: width * 0.80 - 30,
      left: 16.w,
      right: 16.w,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            hintText: 'Search food, restaurents etc...',
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: AppColors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
