import 'package:flutter/material.dart';

import 'category_card_widget.dart';

class CategoryRowWidget extends StatelessWidget {
  const CategoryRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryCard(
          title: 'Rice',
          icon: 'assets/icons/rice_pot.png',
        ),
        CategoryCard(
          title: 'Snack',
          icon: 'assets/icons/snack.png',
        ),
        CategoryCard(
          title: 'Drink',
          icon: 'assets/icons/drink.png',
        ),
        CategoryCard(
          isCategory: true,
          title: 'More',
          icon: 'assets/icons/rice_pot.png',
        ),
      ],
    );
  }
}
