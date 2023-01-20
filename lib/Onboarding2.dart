import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Container(
              height: 137,
            ),
            Image.asset(
              "assets/Images/Onboarding2.png",
            ),
            Container(
              margin: EdgeInsets.only(top: 100, bottom: 20),
              child: BoldNunito(
                input: "How we can help .. !",
                color: AppColors.darkPurple,
                align: TextAlign.center,
              ),
            ),
            Container(
              width: 262,
              alignment: Alignment.center,
              child: RegularNunito(
                input:
                    "We are aiming to tackle the academic stress that leads to severe mental health disorders ",
                color: AppColors.black,
                align: TextAlign.center,
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   margin: EdgeInsets.only(right: 20, top: 60),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.of(context).pushNamed("Onboarding3");
            //     },
            //     child: RegularNunito(
            //       input: 'Next',
            //       color: AppColors.darkPurple,
            //       align: TextAlign.center,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
