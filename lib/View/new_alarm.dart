import 'package:amica_task_one/Control.dart';
import 'package:amica_task_one/Model/AlarmDM.dart';
import 'package:amica_task_one/View/AddFormComponents.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/AppColors.dart';

class NewAlarm extends StatefulWidget {
  List<AlarmDM> alarms;
  NewAlarm({Key? key, required this.alarms}) : super(key: key);

  @override
  State<NewAlarm> createState() => _NewAlarmState();
}

class _NewAlarmState extends State<NewAlarm> {
  String timing = "";
  String AlarmName = "";
  String hour = "";
  String minute = "";
  bool btn1Clicked = true;
  bool? repeat = false;
  bool? vibrate = false;
  var chosenSound;

  TextEditingController name = TextEditingController();
  TextEditingController hours = TextEditingController();
  TextEditingController minutes = TextEditingController();

  List<String>? test;
  List selectedBtns = [
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ]; //is day is selected its index equals 1

  List<String> weekdays = [
    "saturday",
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday"
  ];
  List<String> intials = ["S", "S", "M", "T", "W", "T", "F"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBackground(
          formChild: Container(
            margin: EdgeInsets.only(left: 23, right: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///-------------Alarm Name---------
                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 15),
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    style: TextStyle(color: AppColors.black),
                    controller: name,
                    decoration: InputDecoration(
                      fillColor: AppColors.white,
                      hintText: " Alarm Name",
                      hintStyle: GoogleFonts.nunito(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    onChanged: (val) {
                      AlarmName = val;
                    },
                    // onFieldSubmitted: (val) {
                    //   AlarmName = val;
                    // },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 24,
                          bottom: 15,
                        ),
                        height: 40,
                        // width: 77,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          style: TextStyle(color: AppColors.black),
                          controller: hours,
                          decoration: InputDecoration(
                            fillColor: AppColors.black,
                          ),
                          onChanged: (val) {
                            hour = val;
                          },
                        ),
                      ),
                    ),
                    Container(
                        width: 16,
                        height: 40,
                        alignment: Alignment.center,
                        child: RegularNunito(
                          input: ":",
                          color: AppColors.grey,
                          align: TextAlign.center,
                        )),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 24, bottom: 15),
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          style: TextStyle(color: AppColors.black),
                          controller: minutes,
                          decoration: InputDecoration(
                            fillColor: AppColors.white,
                          ),
                          onChanged: (val) {
                            minute = val;
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 5,
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top: 24, bottom: 15),
                        padding: EdgeInsets.only(top: 10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: btn1Clicked
                                ? AppColors.darkPurple
                                : AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: RegularNunito(
                          input: "AM",
                          color: AppColors.white,
                          align: TextAlign.center,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          timing = "AM";
                          btn1Clicked = true;
                        });
                      },
                    ),
                    Container(
                      width: 5,
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top: 24, bottom: 15),
                        padding: EdgeInsets.only(top: 10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: btn1Clicked
                                ? AppColors.lightGrey
                                : AppColors.darkPurple,
                            borderRadius: BorderRadius.circular(10)),
                        child: RegularNunito(
                          input: "PM",
                          color: AppColors.white,
                          align: TextAlign.center,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          timing = "PM";
                          btn1Clicked = false;
                        });
                      },
                    ),
                  ],
                ),

                ///-------------------Repeat----------------
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: repeat,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        checkColor: AppColors.darkPurple,
                        focusColor: AppColors.darkPurple,
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.transparent;
                          }

                          return AppColors.darkPurple;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                              width: 2.0, color: AppColors.darkPurple),
                        ),
                        onChanged: (val) {
                          setState(() {
                            repeat = val;
                          });
                        },
                      ),
                      RegularNunito(
                          input: "Repeat Everyday",
                          color: AppColors.black,
                          align: TextAlign.left)
                    ],
                  ),
                ),

                ///-----------------Days------------
                Container(
                  height: 24,
                  child: Row(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: intials.length,
                          itemBuilder: (context, i) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                width: 24,
                                // height: 12,
                                decoration: BoxDecoration(
                                    color: selectedBtns[i] == 0
                                        ? Colors.transparent
                                        : AppColors.darkPurple,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: AppColors.darkPurple)),
                                child: RegularNunito(
                                  input: intials[i],
                                  align: TextAlign.center,
                                  color: selectedBtns[i] == 0
                                      ? AppColors.darkPurple
                                      : Colors.white,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (selectedBtns[i] == 0) {
                                    selectedBtns[i] = 1;
                                  } else {
                                    selectedBtns[i] = 0;
                                  }
                                  // print("Index $i = ${selectedBtns[i]}  ");
                                });
                              },
                            );
                          }),
                    ],
                  ),
                ),

                ///-------------------Vibrate----------------
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: vibrate,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        checkColor: AppColors.darkPurple,
                        focusColor: AppColors.darkPurple,
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.transparent;
                          }

                          return AppColors.darkPurple;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                              width: 2.0, color: AppColors.darkPurple),
                        ),
                        onChanged: (val) {
                          setState(() {
                            vibrate = val;
                          });
                        },
                      ),
                      RegularNunito(
                          input: "Vibration",
                          color: AppColors.black,
                          align: TextAlign.left)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(
                      hint: RegularNunito(
                          input: "Default Music ",
                          color: AppColors.black,
                          align: TextAlign.left),
                      items: [
                        "Default Music",
                        "Sound 1",
                        "Sound 2",
                        "Sound 3",
                        "Sound 4",
                        "Sound 5",
                        "Sound 6"
                      ]
                          .map((e) =>
                              DropdownMenuItem(child: Text("$e"), value: e))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          chosenSound = val;
                        });

                        print(chosenSound);
                      },
                      value: chosenSound),
                ),
                Container(
                  height: 35,
                )
              ],
            ),
          ),
          // formHeight: MediaQuery.of(context).size.width * 0.7,
          btntxt: "Add",
          buttonFunc: () {
            Control.addToList(widget.alarms,
                new AlarmDM(AlarmName, "$hour:$minute $timing", "12"));
            Navigator.pop(context);
          },
          cancel: () {
            Navigator.pop(context);
          }),
    );
  }
}
