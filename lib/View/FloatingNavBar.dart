import 'package:amica_task_one/Alarms&Sleeping.dart';
import 'package:amica_task_one/Home.dart';
import 'package:amica_task_one/Statistics.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:flutter/material.dart';

import '../Goals.dart';

class FloatingNavBar extends StatefulWidget {
  const FloatingNavBar({Key? key}) : super(key: key);

  @override
  State<FloatingNavBar> createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Home(),
    AlarmSleep(),
    Text(""),
    Statistic(),
    Goals(),
  ];
  void init() {}
  @override
  Widget build(BuildContext context) {
    // TabController tabController = new TabController(length: 5, vsync: this);
    return Scaffold(
      // backgroundColor: AppColors.blue,
      body: Center(
        child: pages[_currentIndex],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        //removed stack parent
        decoration: BoxDecoration(
            color: AppColors.mint, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(20),
        height: 50,
        child: Stack(
          children: [
            NavigationBarTheme(
              data: NavigationBarThemeData(
                // indicatorColor: Colors.transparent,
                backgroundColor: AppColors.mint,
              ),
              child: NavigationBar(
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                backgroundColor: Colors.transparent,
                // backgroundColor: AppColors.mint,
                animationDuration: const Duration(seconds: 1),
                selectedIndex: _currentIndex,
                onDestinationSelected: (int newIndex) {
                  setState(() {
                    _currentIndex = newIndex;
                  });
                },

                destinations: const [
                  NavigationDestination(
                      selectedIcon: ImageIcon(
                        AssetImage("assets/Images/home.png"),
                        color: AppColors.white,
                      ),
                      icon: ImageIcon(
                        AssetImage("assets/Images/home.png"),
                        color: AppColors.darkPurple,
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: ImageIcon(
                        AssetImage("assets/Images/alarm-clock.png"),
                        color: AppColors.white,
                      ),
                      icon: ImageIcon(
                        AssetImage("assets/Images/alarm-clock.png"),
                        color: AppColors.darkPurple,
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: ImageIcon(
                        AssetImage("assets/Images/alarm-clock.png"),
                        color: AppColors.white,
                      ),
                      icon: ImageIcon(
                        AssetImage("assets/Images/alarm-clock.png"),
                        color: AppColors.darkPurple,
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: ImageIcon(
                        AssetImage("assets/Images/chart-histogram.png"),
                        color: AppColors.white,
                      ),
                      icon: ImageIcon(
                        AssetImage("assets/Images/chart-histogram.png"),
                        color: AppColors.darkPurple,
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: ImageIcon(
                        AssetImage("assets/Images/flag.png"),
                        color: AppColors.white,
                      ),
                      icon: ImageIcon(
                        AssetImage("assets/Images/flag.png"),
                        color: AppColors.darkPurple,
                      ),
                      label: ""),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(color: AppColors.grey, blurRadius: 3)
                    ]),
                child: Image.asset("assets/Images/head.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
