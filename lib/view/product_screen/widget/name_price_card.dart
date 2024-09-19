import 'package:flutter/material.dart';

import '../../utils/font_style.dart';

class NameAndPriceCard extends StatelessWidget {
  const NameAndPriceCard({
    super.key, required this.title, required this.amount,
  });
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppFontStyle.font18BlackBoldPoppins,
            ),
            Text(
              'Cheesy Mozerlla',
              style: AppFontStyle.font14Blackw400Poppins,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            text: '\$ ',
            style: AppFontStyle.font20RedBold,
            children: [
              TextSpan(
                text: amount,
                style: AppFontStyle.font20BlackBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
