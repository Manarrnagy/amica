import 'package:amica_task_one/theme/AppColors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // bottomNavigationBar: FloatingNavbar(
      //   onTap: (int val) {
      //     //returns tab id which is user tapped
      //   },
      //   currentIndex: 0,
      //   items: [
      //     FloatingNavbarItem(icon: Icons.home, title: 'Home'),
      //     FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
      //     FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
      //     FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
      //   ],
      // ),
      body: Center(
        child: Text(
          "index: $_index",
          style: TextStyle(
            fontSize: 52,
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: AppColors.mint,
        selectedBackgroundColor: Colors.transparent,
        unselectedItemColor: AppColors.darkPurple,
        fontSize: 0,
        selectedItemColor: AppColors.white,
        padding: EdgeInsets.zero,
        borderRadius: 20,
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(
              customWidget: Image.asset(
            "assets/Images/home.png",
            // color: AppColors.darkPurple,
          )),
          FloatingNavbarItem(
              customWidget: Image.asset(
            "assets/Images/alarm-clock.png",
            color: AppColors.darkPurple,
          )),
          FloatingNavbarItem(
              customWidget: Container(
            child: Image.asset(
              "assets/Images/head.png",
              color: AppColors.darkPurple,
            ),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.white,
            ),
          )),
          FloatingNavbarItem(
              customWidget: Image.asset(
            "assets/Images/chart-histogram.png",
            color: AppColors.darkPurple,
          )),
          FloatingNavbarItem(
              customWidget: Image.asset(
            "assets/Images/flag.png",
            color: AppColors.darkPurple,
          )),
        ],
      ),
    );
  }
}
