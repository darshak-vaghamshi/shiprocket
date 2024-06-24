import 'package:flutter/material.dart';
import 'package:shiprocket/cart_page/cart_screen.dart';
import 'package:shiprocket/favorite_page/favorite_screen.dart';
import 'package:shiprocket/home_page/home_screen.dart';
import 'package:shiprocket/profile_page/profile_screen.dart';
import 'package:shiprocket/utills/color.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({super.key});

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int cuttenIndex = 2;
  List screens = const [
    Scaffold(),
    FavoriteScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttenIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 0;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 30,
                color: cuttenIndex == 0 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: cuttenIndex == 1 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: cuttenIndex == 3 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color: cuttenIndex == 4 ? primaryColor : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: screens[cuttenIndex],
    );
  }
}
