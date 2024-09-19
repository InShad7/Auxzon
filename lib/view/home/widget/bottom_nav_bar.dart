import 'package:auxzon/view/cart_screen/cart_screen.dart';
import 'package:auxzon/view/favorite_screen/favorite_screen.dart';
import 'package:auxzon/view/profile_screen/profile_screen.dart';
import 'package:auxzon/view/search_screen/search_screen.dart';
import 'package:auxzon/view/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    this.index = 2,
  });
  final int index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int currentIndex;
  List pages = const [
    SearchScreen(),
    FavoriteScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.red,
        unselectedItemColor: AppColors.grey,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundColor:
                    currentIndex == 0 ? AppColors.red : AppColors.white,
                radius: 20.r,
                child: Icon(
                  Icons.search,
                  color: currentIndex == 0 ? AppColors.white : AppColors.grey,
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundColor:
                    currentIndex == 1 ? AppColors.red : AppColors.white,
                radius: 20.r,
                child: Icon(
                  Icons.favorite_outline,
                  color: currentIndex == 1 ? AppColors.white : AppColors.grey,
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20.r,
              backgroundColor:
                  currentIndex == 2 ? AppColors.red : AppColors.white,
              child: Icon(
                Icons.home_outlined,
                size: 28,
                color: currentIndex == 2 ? AppColors.white : AppColors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundColor:
                    currentIndex == 3 ? AppColors.red : AppColors.white,
                radius: 20.r,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: currentIndex == 3 ? AppColors.white : AppColors.grey,
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20.r,
              backgroundColor:
                  currentIndex == 4 ? AppColors.red : AppColors.white,
              child: Icon(
                Icons.person_outlined,
                color: currentIndex == 4 ? AppColors.white : AppColors.grey,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
