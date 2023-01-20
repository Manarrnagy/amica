import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  final List<Color> graphGradient = [
    AppColors.darkPurple,
    AppColors.mint,
    AppColors.lightMint.withOpacity(0.3)
  ];
  @override
  Widget build(BuildContext context) {
    var _valSlider = 10.0;
    int pageIndex = 0;
    int pageIndex2 = 0;
    PageController _pageController =
        new PageController(initialPage: 0, viewportFraction: 1);
    PageController _pageController2 =
        new PageController(initialPage: 0, viewportFraction: 1);
    Widget bottomTitleWidgets(double value, TitleMeta meta) {
      Widget text;
      switch (value.toInt()) {
        case 0:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "14\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        case 1:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "15\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        case 2:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "16\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        case 3:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "17\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        case 4:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "18\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        case 5:
          text = Column(
            children: [
              Container(
                height: 40,
                child: RegularNunito(
                    input: "19\nDec",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkPurple),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.darkPurple,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              )
            ],
          );
          break;
        default:
          text = const Text(
            '',
          );
          break;
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: text,
      );
    }

    Widget leftTitleWidgets(double value, TitleMeta meta) {
      ImageIcon Emoji;
      switch (value.toInt()) {
        case 1:
          Emoji = ImageIcon(AssetImage("assets/Images/emoji1.png"));
          break;
        case 2:
          Emoji = ImageIcon(AssetImage("assets/Images/emoji2.png"));
          break;
        case 3:
          Emoji = ImageIcon(AssetImage("assets/Images/emoji3.png"));
          break;
        case 4:
          Emoji = ImageIcon(AssetImage("assets/Images/emoji4.png"));
          break;
        case 5:
          Emoji = ImageIcon(AssetImage("assets/Images/emoji5.png"));
          break;

        default:
          return Text("00");
      }
      return Emoji;
    }

    ///-------------------------Scaffold------------------
    return Scaffold(
      appBar: CustomAppBar(
        height: 85,
        avatarHeight: 24,
        avatartop: 48,
        avatarStart: 302,
        child: Container(
          height: 22,
          child: RegularNunito(
            input: "Statistics",
            color: AppColors.white,
            align: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Background(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30, right: 30, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoldNunito(
                      input: "Current State",
                      color: AppColors.black,
                      align: TextAlign.left),
                  BoldNunito(
                      input: " Very Happy",
                      color: AppColors.darkPurple,
                      align: TextAlign.left),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RegularNunito(
                      input: "Happiness Points: 520",
                      color: AppColors.darkPurple,
                      align: TextAlign.center),
                  Icon(
                    Icons.arrow_drop_up,
                    color: AppColors.mint,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
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
                            print(pageIndex);
                          });
                        },
                        child: Text(
                          "Mood Insights",
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
                          setState(() {
                            pageIndex = 1;
                            print(pageIndex);
                          });
                        },
                        child: Text(
                          "Sleep Insights",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: pageIndex == 1
                                  ? AppColors.darkPurple
                                  : AppColors.grey),
                        )),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                // width: 48,
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 6,
                    minY: 0,
                    maxY: 6,
                    gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                              color: AppColors.lightGrey, strokeWidth: 1);
                        },
                        drawVerticalLine: false),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          interval: 1,
                          getTitlesWidget: bottomTitleWidgets,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTitlesWidget: leftTitleWidgets,
                          reservedSize: 42,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                        show: true, border: Border.fromBorderSide(BorderSide.none)
                        // color: Colors.white, width: 0)
                        ),
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            FlSpot(0, 2),
                            FlSpot(0.75, 3),
                            FlSpot(2, 4),
                            FlSpot(4, 4),
                            FlSpot(5, 5),
                          ],
                          color: AppColors.darkPurple,
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: graphGradient
                                  .map((color) => color.withOpacity(0.5))
                                  .toList(),
                            ),
                          )),
                    ],
                  ),

                  swapAnimationDuration: Duration(milliseconds: 150), // Optional
                  swapAnimationCurve: Curves.linear, // Optional
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Slider(
                    min: 0,
                    max: 100,
                    activeColor: AppColors.darkPurple,
                    inactiveColor: AppColors.mint,
                    value: _valSlider,
                    onChanged: (val) {
                      setState(() {
                        _valSlider = val;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        _pageController2.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: RegularNunito(
                        input: "This week",
                        color: pageIndex2 == 0
                            ? AppColors.darkPurple
                            : AppColors.grey,
                        align: TextAlign.center,
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: AppColors.mint,
                        fontSize: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _pageController2.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: RegularNunito(
                        input: "last week",
                        color: pageIndex2 == 1
                            ? AppColors.darkPurple
                            : AppColors.grey,
                        align: TextAlign.center,
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: AppColors.mint,
                        fontSize: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _pageController2.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: RegularNunito(
                        input: "last 90 days",
                        color: pageIndex2 == 2
                            ? AppColors.darkPurple
                            : AppColors.grey,
                        align: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Expanded(
                  // height: MediaQuery.of(context).size.height * 0.25,
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 40),
                          // height: MediaQuery.of(context).size.height * 0.3,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              BoldNunito(
                                  input: "Your Mood Records",
                                  color: AppColors.darkPurple,
                                  align: TextAlign.center)
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 40),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            BoldNunito(
                                input: "Your Sleep Records",
                                color: AppColors.darkPurple,
                                align: TextAlign.center)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
