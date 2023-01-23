import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/BoldNunito.dart';

class PremiumPopUp extends StatefulWidget {
  const PremiumPopUp({Key? key}) : super(key: key);

  @override
  State<PremiumPopUp> createState() => _PremiumPopUpState();
}

class _PremiumPopUpState extends State<PremiumPopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: AppColors.mint,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Colors.transparent,
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  alignment: Alignment.center,
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                          "assets/Images/premium_card.png"),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 180, left: 25),
                                        child: BoldNunito(
                                          input: "Available for Premium ",
                                          color: AppColors.darkPurple,
                                          align: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 210, left: 5),
                                        child: RegularNunito(
                                          input:
                                              "try our premium experience and enjoy the full features of the great application",
                                          color: AppColors.darkPurple,
                                          align: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(top: 250),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          color: AppColors.mint,
                                          minWidth: 150,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ));
                })
          ],
        ),
      ),
    );
  }
}
