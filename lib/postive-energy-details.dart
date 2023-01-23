import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import "Model/GoalDM.dart";
import 'View/CustomAppBar.dart';

class PostiveEnergyDetails extends StatefulWidget {
  late AmicaGoalsDM goalDetails;
  PostiveEnergyDetails({Key? key, required this.goalDetails}) : super(key: key);

  @override
  State<PostiveEnergyDetails> createState() => _PostiveEnergyDetailsState();
}

class _PostiveEnergyDetailsState extends State<PostiveEnergyDetails> {
  // late List<Bool> done;
  var done = false;
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
            input: "Postive Energy - details",
            color: AppColors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: Stack(
        children: [
          Background(
            marginRight: 34,
            marginLeft: 34,
            //marginTop: 34,
            child: Column(
              children: [
                AppComponents.backButton(context),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Image.asset(widget.goalDetails.imgUrl.toString()),
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
                          widget.goalDetails.title!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              color: AppColors.white, fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                ),
                BoldNunito(
                    input: widget.goalDetails.title.toString(),
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
                              input: widget.goalDetails.totalTasks.toString(),
                              color: AppColors.darkPurple,
                              align: TextAlign.right),
                          RegularNunito(
                              input: widget.goalDetails.totalsCoins.toString(),
                              color: AppColors.darkPurple,
                              align: TextAlign.center),
                          RegularNunito(
                              input: widget.goalDetails.Completed.toString(),
                              color: AppColors.darkPurple,
                              align: TextAlign.center),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.mint,
                  thickness: 2,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, i) {
                        return
                            //   Container(
                            //   alignment: Alignment.topCenter,
                            //   margin: EdgeInsets.only(
                            //       bottom:
                            //           MediaQuery.of(context).size.height * 0.01),
                            //   height: MediaQuery.of(context).size.height * 0.09,
                            //   width: MediaQuery.of(context).size.width * 0.75,
                            //   decoration: BoxDecoration(
                            //       color: AppColors.white,
                            //       borderRadius: BorderRadius.circular(10)),
                            //   child: ExpansionTileCard(
                            //     baseColor: AppColors.white,
                            //     expandedColor: AppColors.white,
                            //     leading: Checkbox(
                            //       value: done,
                            //       shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(3)),
                            //       checkColor: AppColors.darkPurple,
                            //       focusColor: AppColors.darkPurple,
                            //       fillColor:
                            //           MaterialStateProperty.resolveWith((states) {
                            //         if (states.contains(MaterialState.selected)) {
                            //           return Colors.transparent;
                            //         }
                            //
                            //         return AppColors.darkPurple;
                            //       }),
                            //       side: MaterialStateBorderSide.resolveWith(
                            //         (states) => BorderSide(
                            //             width: 2.0, color: AppColors.darkPurple),
                            //       ),
                            //       onChanged: (val) {
                            //         setState(() {
                            //           done = val!;
                            //         });
                            //       },
                            //     ),
                            //     title: Text(
                            //       "Day ${i + 1}",
                            //       style: GoogleFonts.nunito(
                            //           fontWeight: FontWeight.bold,
                            //           color: AppColors.darkPurple,
                            //           fontSize: 16),
                            //     ),
                            //     trailing: Text(
                            //       "50 Coins",
                            //       style: GoogleFonts.nunito(
                            //           fontWeight: FontWeight.bold,
                            //           color: AppColors.yellow,
                            //           fontSize: 16),
                            //     ),
                            //     children: [
                            //       Checkbox(
                            //         value: done,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.circular(3)),
                            //         checkColor: AppColors.darkPurple,
                            //         focusColor: AppColors.darkPurple,
                            //         fillColor:
                            //             MaterialStateProperty.resolveWith((states) {
                            //           if (states.contains(MaterialState.selected)) {
                            //             return Colors.transparent;
                            //           }
                            //
                            //           return AppColors.darkPurple;
                            //         }),
                            //         side: MaterialStateBorderSide.resolveWith(
                            //           (states) => BorderSide(
                            //               width: 2.0, color: AppColors.darkPurple),
                            //         ),
                            //         onChanged: (val) {
                            //           setState(() {
                            //             done = val!;
                            //           });
                            //         },
                            //       ),
                            //       Text(
                            //         "Day ${i + 1}",
                            //         style: GoogleFonts.nunito(
                            //             fontWeight: FontWeight.bold,
                            //             color: AppColors.darkPurple,
                            //             fontSize: 16),
                            //       ),
                            //       Container(
                            //         height: 300,
                            //       )
                            //     ],
                            //   ),
                            // );

                            ExpansionCard(
                          title: Container(
                            margin: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.004),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: done,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  checkColor: AppColors.darkPurple,
                                  focusColor: AppColors.darkPurple,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      (states) {
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return Colors.transparent;
                                    }

                                    return AppColors.darkPurple;
                                  }),
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 2.0,
                                        color: AppColors.darkPurple),
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      done = val!;
                                    });
                                  },
                                ),
                                Text(
                                  "Day ${i + 1}",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.darkPurple,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Text(
                                  "50 Coins",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.yellow,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                child: Column(
                                  children: [
                                    CheckboxListTile(
                                        title: RegularNunito(
                                          input: "Wake Up At 6:30 Am",
                                          color: AppColors.black,
                                          align: TextAlign.left,
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        checkColor: AppColors.darkPurple,
                                        side:
                                            MaterialStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 2.0,
                                              color: AppColors.darkPurple),
                                        ),
                                        activeColor: Colors.transparent,
                                        selectedTileColor: AppColors.white,
                                        value: true,
                                        onChanged: (val) {
                                          val = false;
                                        }),
                                    CheckboxListTile(
                                        title: RegularNunito(
                                          input: "Take A Depression assment",
                                          color: AppColors.black,
                                          align: TextAlign.left,
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        checkColor: AppColors.darkPurple,
                                        side:
                                            MaterialStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 2.0,
                                              color: AppColors.darkPurple),
                                        ),
                                        activeColor: Colors.transparent,
                                        selectedTileColor: AppColors.white,
                                        value: true,
                                        onChanged: (val) {
                                          val = false;
                                        }),
                                    CheckboxListTile(
                                        title: RegularNunito(
                                          input: "Eat You Break Fast",
                                          color: AppColors.black,
                                          align: TextAlign.left,
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        checkColor: AppColors.darkPurple,
                                        side:
                                            MaterialStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 2.0,
                                              color: AppColors.darkPurple),
                                        ),
                                        activeColor: Colors.transparent,
                                        selectedTileColor: AppColors.white,
                                        value: true,
                                        onChanged: (val) {
                                          val = false;
                                        }),
                                    CheckboxListTile(
                                        title: RegularNunito(
                                          input: "Take Mind Exercies",
                                          color: AppColors.black,
                                          align: TextAlign.left,
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        checkColor: AppColors.darkPurple,
                                        side:
                                            MaterialStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 2.0,
                                              color: AppColors.darkPurple),
                                        ),
                                        activeColor: Colors.transparent,
                                        selectedTileColor: AppColors.white,
                                        value: true,
                                        onChanged: (val) {
                                          val = false;
                                        }),
                                  ],
                                ))
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
          // Positioned(
          //   bottom: 1,
          //   child: Container(
          //     // margin: EdgeInsets.only(
          //     //     top: MediaQuery.of(context).size.height * 0.13),
          //     height: MediaQuery.of(context).size.height * 0.25,
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter,
          //             colors: [
          //           //Colors.transparent,
          //           AppColors.lavender.withOpacity(0),
          //           AppColors.lavender
          //         ])),
          //   ),
          // )
        ],
      ),
    );
  }
}
