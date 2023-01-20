import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/View/new_alarm.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';

import 'Model/AlarmDM.dart';
import 'View/ListTiles.dart';

class MyAlarms extends StatefulWidget {
  const MyAlarms({Key? key}) : super(key: key);

  @override
  State<MyAlarms> createState() => _MyAlarmsState();
}

class _MyAlarmsState extends State<MyAlarms> {
  List<AlarmDM> myAlarms = [
    new AlarmDM("Work alarm", "7:00 AM", "12"),
    new AlarmDM("Gym & Training", "6:15 PM", "25"),
    new AlarmDM("Meditation", "9:00 PM", "12")
  ];
  String alarmImgUrl = "assets/Images/alarm-clock.png";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: myAlarms.length,
            itemBuilder: (context, i) {
              return Stack(
                children: [
                  ListTiles(
                      title: myAlarms[i].purpose.toString(),
                      description: myAlarms[i].time.toString() +
                          " - " +
                          myAlarms[i].timeRemaining.toString() +
                          "hrs Remaining",
                      imgUrl: "assets/Images/flag.png"),
                  Positioned(
                      child: AppComponents.imageIconButton(
                          "assets/Images/trash.png", () {
                        setState(() {
                          myAlarms.removeAt(i);
                        });
                      }),

                      // DeleteButton(function: () {
                      //   setState(() {
                      //     myAlarms.removeAt(i);
                      //   });
                      // }),
                      right: 40,
                      top: 15)
                ],
              );
            },
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.only(bottom: 50),
            child: AppComponents.bottomButton(context, () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewAlarm(
                          alarms: myAlarms,
                        )));
              });
            },
                RegularNunito(
                    input: "Add New Alarm",
                    color: AppColors.white,
                    align: TextAlign.center)))
      ],
    );
  }
}
