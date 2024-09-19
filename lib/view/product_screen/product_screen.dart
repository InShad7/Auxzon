import 'package:auxzon/view/utils/colors.dart';
import 'package:auxzon/view/utils/constants.dart';
import 'package:auxzon/view/utils/font_style.dart';
import 'package:auxzon/view/widget/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'widget/counter_widget.dart';
import 'widget/description_card.dart';
import 'widget/name_price_card.dart';
import 'widget/nutrition_widget.dart';
import 'widget/product_top_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.product});

  final Map<String, dynamic> product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductTopWidget(
              img: product['productImg'],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.w),
              child: Column(
                children: [
                  const CounterWidget(),
                  AppConstants.kHeight20,
                  NameAndPriceCard(
                    title: product['productName'],
                    amount: product['price'],
                  ),
                  AppConstants.kHeight30,
                  NutritionWidget(
                    rating: product['rating'],
                  ),
                  AppConstants.kHeight30,
                  const DescriptionCard(),
                  AppConstants.kHeight50,
                  AppConstants.kHeight50,
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
        height: MediaQuery.of(context).size.width / 5.3,
        child: CustomBtn(
          title: 'Add to Cart',
          onPressed: () {
            Fluttertoast.showToast(msg: 'Added to cart');
          },
          color: AppColors.red,
          fontstyle: AppFontStyle.font18WhiteBoldPoppins,
        ),
      ),
    );
  }
}
