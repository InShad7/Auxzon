import 'package:auxzon/view/utils/font_style.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favorite Screen',
          style: AppFontStyle.font18Grey,
        ),
      ),
    );
  }
}
