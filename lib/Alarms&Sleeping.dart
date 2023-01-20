import 'package:amica_task_one/MyAlarms.dart';
import 'package:amica_task_one/SleepingAid.dart';
import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class AlarmSleep extends StatefulWidget {
  const AlarmSleep({Key? key}) : super(key: key);

  @override
  State<AlarmSleep> createState() => _AlarmSleepState();
}

class _AlarmSleepState extends State<AlarmSleep> {
  PageController _pageController =
      new PageController(initialPage: 0, viewportFraction: 1);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 85,
        avatarHeight: 24,
        avatartop: 48,
        avatarStart: 302,
        child: Container(
          height: 22,
          child: RegularNunito(
            input: "Alarm & Sleeping",
            color: Colors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: Background(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Text(
                        "My Alarms",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: pageIndex == 0
                              ? AppColors.darkPurple
                              : AppColors.grey,
                          //AppColors.darkPurple
                        ),
                      )),
                  Text(
                    "|",
                    style: TextStyle(
                      color: AppColors.mint,
                      fontSize: 40,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Text(
                        "Sleeping Aid",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: pageIndex == 1
                              ? AppColors.darkPurple
                              : AppColors.grey,
                        ),
                      )),
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: [
                    Container(
                        // height: MediaQuery.of(context).size.height * 0.3,
                        child: MyAlarms()),
                    Container(
                      // height: MediaQuery.of(context).size.height * 0.3,
                      child: SleepingAid(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
