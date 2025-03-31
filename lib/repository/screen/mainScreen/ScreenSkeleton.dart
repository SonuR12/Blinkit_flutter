import 'package:ecomm_flutter/domain/constants/appcolors.dart';
import 'package:ecomm_flutter/repository/screen/AppBar/appBar.dart';
import 'package:ecomm_flutter/repository/screen/cart/cart.dart';
import 'package:ecomm_flutter/repository/screen/category/category.dart';
import 'package:ecomm_flutter/repository/screen/home/home.dart';
import 'package:ecomm_flutter/repository/screen/print/print.dart';
import 'package:flutter/material.dart';

class ScreenSkeleton extends StatefulWidget {
  const ScreenSkeleton({super.key});

  @override
  State<ScreenSkeleton> createState() => _ScreenSkeletonState();
}

class _ScreenSkeletonState extends State<ScreenSkeleton> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpToPage(index); // Navigate to the selected page
  }

  final List<Widget> pages = [
    HomePage(),
    CartPage(),
    CategoryPage(),
    PrintPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView behind the AppBar
          Positioned.fill(
            top: 182, // PageView starts below the AppBar
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: pages,
            ),
          ),

          // AppBar positioned at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 240,
            child: CustomAppBar(
              backgroundColor: currentIndex == 0 ? Colors.red : AppColors.scaffoldbackground,
            ),
          ),
        ],
      ),

      // BottomBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 30,
        selectedItemColor: Colors.blue.shade600,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: List.generate(4, (index) {
          List<Map<String, dynamic>> navItems = [
            {"icon": Icons.home},
            {"icon": Icons.shopping_cart},
            {"icon": Icons.dashboard_outlined},
            {"icon": Icons.print},
          ];
          return BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.topCenter,
              children: [
                // Top Indicator for Selected Item
                Positioned(
                  top: 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    height: currentIndex == index ? 4 : 0,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(navItems[index]["icon"]),
                ),
              ],
            ),
            label: "",
          );
        }),
      ),
    );
  }
}
