import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductController extends ChangeNotifier {
  int count = 0;

  incrementCount() {
    if (count >= 0 && count < 20) {
      count++;
      notifyListeners();
    }
    if (count >= 20) {
      Fluttertoast.showToast(
        msg: 'Limit exceeded',
        // backgroundColor: AppColors.red,
      );
    }
  }

  decrementCount() {
    if (count > 0) {
      count--;
      notifyListeners();
    }
  }

  List<Map<String, dynamic>> productList = [
    {
      'productName': 'Burger Beef \'anjaz\'',
      'productImg': 'assets/images/image-1.jpg',
      'shopName': 'Burger Hub',
      'price': '10.99',
      'rating': '4.6',
    },
    {
      'productName': 'Cheese Meat Pizza',
      'productImg': 'assets/images/image-4.jpg',
      'shopName': 'Pizza Corner',
      'price': '12.49',
      'rating': '4.2',
    },
    {
      'productName': 'Zinger Burger',
      'productImg': 'assets/images/image-7.jpg',
      'shopName': 'Zinger King',
      'price': '9.99',
      'rating': '4.0',
    },
    {
      'productName': 'Mutton Burger',
      'productImg': 'assets/images/image-6.jpg',
      'shopName': 'Mutton Mania',
      'price': '11.99',
      'rating': '4.9',
    },
    {
      'productName': 'Thandoori Burger',
      'productImg': 'assets/images/image-2.jpg',
      'shopName': 'Spice House',
      'price': '8.99',
      'rating': '4.6',
    },
  ];
}
