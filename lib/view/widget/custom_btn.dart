import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.fontstyle,
  });
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle fontstyle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(
          vertical: width / 70,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.0.w),
        child: Center(
          child: Text(
            title,
            style: fontstyle,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
