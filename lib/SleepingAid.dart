import 'package:amica_task_one/Model/SleepingDM.dart';
import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SleepingAid extends StatefulWidget {
  const SleepingAid({Key? key}) : super(key: key);

  @override
  State<SleepingAid> createState() => _SleepingAidState();
}

class _SleepingAidState extends State<SleepingAid> {
  List<String> categories = [
    "All",
    "Sleep Coaching",
    "Relax",
    "Audio",
    "Guides",
    "Stories"
  ];
  List<SleepingDM> items = [
    SleepingDM(
        "assets/Images/Sleeping/sleeping1.png", "Sleeping Story 3", "Stories"),
    SleepingDM("assets/Images/Sleeping/sleeping2.png", "Sleeping Techniques",
        "Sleep Coaching"),
    SleepingDM("assets/Images/Sleeping/sleeping3.png", "Peaceful sleep guide",
        "Guides"),
    SleepingDM(
        "assets/Images/Sleeping/sleeping4.png", "Slow Relaxing Audio", "Relax"),
    SleepingDM(
        "assets/Images/Sleeping/sleeping5.png", "Sleeping Story 2", "Stories"),
  ];
  late List<SleepingDM> filteredItems;

  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 100,
            ),
            // padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.06,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          // If the button is pressed, return size 40, otherwise 20
                          if (selectedCategory == i ||
                              states.contains(MaterialState.pressed) ||
                              states.contains(MaterialState.selected) ||
                              states.contains(MaterialState.hovered)) {
                            return AppColors.darkPurple;
                          }
                          return AppColors.white;
                        }),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                width: 1, color: AppColors.darkPurple),
                          ),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {
                        setState(() {
                          selectedCategory = i;
                          if (i < categories.length) {
                            // if (items[i]
                            //     .category
                            //     .toString()
                            //     .toLowerCase()
                            //     .contains(
                            //         categories[i].toString().toLowerCase())) {
                            //   filteredItems.add(items[i]);
                            filteredItems = items
                                .where(
                                    (e) => e.category.contains(categories[i]))
                                .toList();
                            print(filteredItems);
                            // }
                          }
                        });
                      },
                      child: RegularNunito(
                        color: selectedCategory == i
                            ? AppColors.white
                            : AppColors.darkPurple,
                        input: categories[i],
                        align: TextAlign.center,
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:
                  (selectedCategory == 0) ? items.length : filteredItems.length,
              // items.length,

              //clipBehavior: Clip.antiAlias,
              itemBuilder: (context, i) {
                return selectedCategory == 0
                    ? Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      items[i].imgUrl,
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.27,
                                    width: MediaQuery.of(context).size.width *
                                        0.79,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          AppColors.mint.withOpacity(0.7)
                                        ],
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),

                            /// ---------------- Label-------------
                            Container(
                              child: BoldNunito(
                                  input: items[i].name,
                                  color: AppColors.darkPurple,
                                  align: TextAlign.center),
                            )
                          ],
                        ),
                      )
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      filteredItems[i].imgUrl,
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.27,
                                    width: MediaQuery.of(context).size.width *
                                        0.79,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          AppColors.mint.withOpacity(0.7)
                                        ],
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),

                            /// ---------------- Label-------------
                            Container(
                              child: BoldNunito(
                                  input: filteredItems[i].name,
                                  // items
                                  //     .where((e) => items[i].category.contains(
                                  //         categories[selectedCategory]))
                                  //     .toString(),
                                  color: AppColors.darkPurple,
                                  align: TextAlign.center),
                            )
                          ],
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
