import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/ListTiles.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Model/MyGoalsDM.dart';

class MyGoals extends StatefulWidget {
  const MyGoals({Key? key}) : super(key: key);

  @override
  State<MyGoals> createState() => _MyGoalsState();
}

class _MyGoalsState extends State<MyGoals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 40),
      child: RegularNunito(
        input:
            "Here You can Add your Personal Goals.\n set a date and time to Finish them \nand achieve more",
        color: Colors.black,
        align: TextAlign.center,
      ),
    );
  }
}

class MyGoalsList extends StatefulWidget {
  const MyGoalsList({Key? key}) : super(key: key);

  @override
  State<MyGoalsList> createState() => _MyGoalsListState();
}

class _MyGoalsListState extends State<MyGoalsList> {
  List<MyGoalsDM> goals = [
    new MyGoalsDM("Stay Focused", "18-12-2021"),
    new MyGoalsDM("Take A Break", "18-12-2021"),
    new MyGoalsDM("Build My Portofolio", "18-12-2021")
  ];
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: goals.length,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    ListTiles(
                        title: goals[i].title.toString(),
                        description: goals[i].Date.toString(),
                        imgUrl: "assets/Images/flag.png"),
                    Positioned(
                        child: DeleteButton(function: () {}),
                        // InkWell(
                        //   child: Container(
                        //     child: Icon(
                        //       Icons.delete_outline_rounded,
                        //       color: AppColors.darkPurple,
                        //     ),
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         color: AppColors.mint),
                        //     width: 40,
                        //     height: 40,
                        //   ),
                        //   onTap: () {},
                        // ),
                        right: 40,
                        top: 15)
                  ],
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.only(bottom: 90),
            child: MaterialButton(
              color: AppColors.mint,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              clipBehavior: Clip.antiAlias,
              onPressed: () {},
              child: RegularNunito(
                input: "Add New Goal",
                color: AppColors.white,
                align: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
