import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/font_style.dart';

class NutritionWidget extends StatelessWidget {
  const NutritionWidget({
    super.key,
    required this.rating,
  });
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NutritionCard(
          title: rating,
          icon: Icons.star,
        ),
        const NutritionCard(
          title: '150 Kcal',
          icon: Icons.local_fire_department,
        ),
        const NutritionCard(
          title: '5-6 min',
          icon: Icons.schedule_outlined,
        ),
      ],
    );
  }
}

class NutritionCard extends StatelessWidget {
  const NutritionCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.grey,
          size: width >= 800 ? width / 16 : width / 13,
        ),
        Text(
          title,
          style: AppFontStyle.font15Grey,
        ),
      ],
    );
  }
}
