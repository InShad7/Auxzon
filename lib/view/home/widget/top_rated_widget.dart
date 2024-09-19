import 'package:auxzon/controller/product_controller.dart';
import 'package:auxzon/view/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants.dart';
import '../../utils/font_style.dart';
import 'top_rated_card.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final provider = Provider.of<ProductController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Rated Food',
          style: AppFontStyle.font18BlackBoldPoppins,
        ),
        AppConstants.kHeight,
        SizedBox(
          height: width / 2.1,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final product = provider.productList[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(product: product),
                  ),
                ),
                child: TopRatedFoodCard(
                  imgURL: product['productImg'],
                  title: product['productName'],
                  amount: product['price'],
                  shopName: product['shopName'],
                  rating: product['rating'],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
