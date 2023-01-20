import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';

import 'View/AddFormComponents.dart';

class AddSleep extends StatefulWidget {
  const AddSleep({Key? key}) : super(key: key);

  @override
  State<AddSleep> createState() => _AddSleepState();
}

class _AddSleepState extends State<AddSleep> {
  String? sleephrs;
  String? sleepmins;
  String? wakehrs;
  String? wakemins;
  String? sleeptiming;
  String? waketiming;
  bool btn1Clicked = true;
  bool btn2Clicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBackground(
          formChild: Container(
            margin: EdgeInsets.only(left: 23, right: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                          // controller: hours,
                          decoration: InputDecoration(
                            fillColor: AppColors.black,
                          ),
                          onChanged: (val) {
                            sleephrs = val;
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
                          //controller: minutes,
                          decoration: InputDecoration(
                            fillColor: AppColors.white,
                          ),
                          onChanged: (val) {
                            sleepmins = val;
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
                          sleeptiming = "AM";
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
                          sleeptiming = "PM";
                          btn1Clicked = false;
                        });
                      },
                    ),
                  ],
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
                          // controller: wakehrs,
                          decoration: InputDecoration(
                            fillColor: AppColors.black,
                          ),
                          onChanged: (val) {
                            wakehrs = val;
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
                          // controller: minutes,
                          decoration: InputDecoration(
                            fillColor: AppColors.white,
                          ),
                          onChanged: (val) {
                            wakemins = val;
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
                            color: btn2Clicked
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
                          waketiming = "AM";
                          btn2Clicked = true;
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
                            color: btn2Clicked
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
                          waketiming = "PM";
                          btn2Clicked = false;
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  height: 35,
                )
              ],
            ),
          ),
          // formHeight: MediaQuery.of(context).size.width * 0.7,
          btntxt: "Add",
          buttonFunc: () {},
          cancel: () {
            Navigator.pop(context);
          }),
    );
  }
}
