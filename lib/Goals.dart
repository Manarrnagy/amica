import 'package:amica_task_one/View/AmicaGoals.dart';
import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/MyGoals.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  int pageIndex = 0;
  PageController _pageController =
      new PageController(initialPage: 0, viewportFraction: 1);

  PageController _pageController2 =
      new PageController(initialPage: 0, viewportFraction: 1);
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
            input: "Goals",
            color: Colors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: Background(
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.23,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: [
                    Container(
                        // height: MediaQuery.of(context).size.height * 0.3,
                        child: AmicaGoals()),
                    Container(
                      // height: MediaQuery.of(context).size.height * 0.3,
                      child: MyGoals(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);

                        _pageController2.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Text(
                        "Amica Goals",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: pageIndex == 0
                              ? AppColors.darkPurple
                              : AppColors.grey,
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

                        _pageController2.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Text(
                        "My Goals",
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
              child: Expanded(
                // height: MediaQuery.of(context).size.height * 0.25,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController2,
                  children: [
                    Container(
                        // height: MediaQuery.of(context).size.height * 0.3,
                        child: AmicaGoalsList()),
                    Container(
                      // height: MediaQuery.of(context).size.height * 0.3,
                      child: MyGoalsList(),
                    )
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
