import 'package:amica_task_one/postive-energy-details.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/GoalDM.dart';

class AmicaGoals extends StatefulWidget {
  const AmicaGoals({Key? key}) : super(key: key);

  @override
  State<AmicaGoals> createState() => _AmicaGoalsState();
}

class _AmicaGoalsState extends State<AmicaGoals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 34, right: 34, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              // width: 260,
              child: RegularNunito(
                input:
                    "Set here all your desired habits you want to do every day",
                color: AppColors.black,
                align: TextAlign.center,
              ),
            ),
          ),
          Text.rich(
            TextSpan(
                text: "Complete more",
                style: GoogleFonts.nunito(fontSize: 16, color: AppColors.black),
                children: <InlineSpan>[
                  TextSpan(
                    text: " Goals",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.darkPurple,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " to get",
                    style: GoogleFonts.nunito(
                        fontSize: 16, color: AppColors.black),
                  ),
                  TextSpan(
                    text: " Coins",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.darkPurple,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 22.5, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldNunito(
                    input: "Total Coins:",
                    color: AppColors.darkPurple,
                    align: TextAlign.center),
                BoldNunito(
                    input: "1895",
                    color: AppColors.yellow,
                    align: TextAlign.center),
                Image.asset("assets/Images/coins_icon.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AmicaGoalsList extends StatefulWidget {
  const AmicaGoalsList({Key? key}) : super(key: key);

  @override
  State<AmicaGoalsList> createState() => _AmicaGoalsListState();
}

class _AmicaGoalsListState extends State<AmicaGoalsList> {
  List<AmicaGoalsDM> goals = [
    new AmicaGoalsDM("assets/Images/goal1.png", "Positive Energy", "5",
        "250 Coins", "2/5", "02/05"),
    new AmicaGoalsDM("assets/Images/goal2.png", "Stay Away From Screen", "7",
        "350 Coins", "1/7", "01/07"),
    new AmicaGoalsDM("assets/Images/goal3.png", "Healthy Eating", "7",
        "350 Coins", "1/7", "01/07")
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: goals.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Stack(
                      children: [
                        Image.asset(goals[i].imgUrl.toString()),
                        Container(
                          width: 310,
                          height: 210,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    AppColors.darkPurple,
                                    AppColors.blue,
                                  ])),
                          child: Text(
                            goals[i].title.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                                color: AppColors.white, fontSize: 50),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              color: AppColors.mint,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(goals[i].day.toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.white)),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PostiveEnergyDetails(goalDetails: goals[i]),
                        ),
                      );
                    },
                  ),
                  BoldNunito(
                      input: goals[i].title.toString(),
                      color: AppColors.darkPurple,
                      align: TextAlign.center),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RegularNunito(
                                input: "Total tasks:",
                                color: AppColors.darkPurple,
                                align: TextAlign.center),
                            RegularNunito(
                                input: "Total Coins:",
                                color: AppColors.darkPurple,
                                align: TextAlign.center),
                            RegularNunito(
                                input: "Completed:",
                                color: AppColors.darkPurple,
                                align: TextAlign.center),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RegularNunito(
                                input: goals[i].totalTasks.toString(),
                                color: AppColors.darkPurple,
                                align: TextAlign.right),
                            RegularNunito(
                                input: goals[i].totalsCoins.toString(),
                                color: AppColors.darkPurple,
                                align: TextAlign.center),
                            RegularNunito(
                                input: goals[i].Completed.toString(),
                                color: AppColors.darkPurple,
                                align: TextAlign.center),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
