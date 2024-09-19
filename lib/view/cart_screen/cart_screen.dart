import 'package:auxzon/view/utils/font_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Cart Screen',
          style: AppFontStyle.font18Grey,
        ),
      ),
    );
  }
}
