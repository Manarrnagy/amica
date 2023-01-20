import 'dart:ui' as ui;

import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Breath extends StatefulWidget {
  const Breath({Key? key}) : super(key: key);

  @override
  State<Breath> createState() => _BreathState();
}

class _BreathState extends State<Breath> with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animationR;
  late Animation<double> animationL;

  @override
  void initState() {
    animController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animationR = Tween<double>(begin: 1.3, end: 0).animate(animController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });
    animationL = Tween<double>(begin: -1.3, end: 0).animate(animController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });

    animController.forward();
    super.initState();
  }

  @override
  void dispose() {
    //animController.dispose();
    super.dispose();
  }

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
            input: "Breath",
            color: AppColors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Background(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                AppComponents.backButton(context),
                // Transform.rotate(
                //   angle: animation.value,
                //   child: Icon(
                //     Icons.forward,
                //     color: AppColors.black,
                //   ),
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  // width: MediaQuery.of(context).size.width * 0.,
                  child: Stack(
                    children: [
                      Container(
                        //middle right
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Transform.rotate(
                            angle: animationR.value / 2,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/Images/Intersection 3.png",
                              scale: 1.1,
                              opacity: const AlwaysStoppedAnimation(.8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        //middle left
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Transform.rotate(
                            angle: animationL.value / 2,
                            alignment: Alignment.bottomCenter,
                            // child: CustomPaint(
                            //   size: Size(
                            //       MediaQuery.of(context).size.width * 0.22,
                            //       (MediaQuery.of(context).size.width *
                            //               0.22 *
                            //               2.171899382061045)
                            //           .toDouble()),
                            //   painter: RPSCustomPainter(),
                            // ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                            //

                            child: Image.asset(
                              "assets/Images/Intersection 3.png",
                              scale: 1.1,
                              opacity: const AlwaysStoppedAnimation(.8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // right
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Transform.rotate(
                            angle: animationR.value,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/Images/Intersection 3.png",
                              scale: 1.4,
                              opacity: const AlwaysStoppedAnimation(.8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // left
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Transform.rotate(
                            angle: animationL.value,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/Images/Intersection 3.png",
                              scale: 1.4,
                              opacity: const AlwaysStoppedAnimation(.8),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/Images/Intersection 3.png",
                          opacity: const AlwaysStoppedAnimation(.8),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                    child: RegularNunito(
                  input: 'Just Relax and take',
                  align: TextAlign.center,
                  color: AppColors.darkPurple,
                )),
                Center(
                    child: BoldNunito(
                  input: "a deep breath",
                  align: TextAlign.center,
                  color: AppColors.darkPurple,
                )),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: BoldNunito(
                    input: '0:58',
                    align: TextAlign.center,
                    color: AppColors.mint,
                  ),
                ),
                Divider(
                  color: AppColors.mint,
                  thickness: 1,
                ),
                Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: Text(
                      'Steps to relax more ..',
                      style: GoogleFonts.nunito(
                          color: AppColors.darkPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularNunito(
                      input: '''1- Take slow, deep breaths. Or try other ''',
                      align: TextAlign.left,
                      color: AppColors.darkPurple,
                    ),
                    RegularNunito(
                      input: ''' breathing exercises for relaxation.''',
                      align: TextAlign.left,
                      color: AppColors.darkPurple,
                    ),
                    RegularNunito(
                      input:
                          '''2- Soak in a warm bath.\n3- Listen to soothing music.\n4- Practice mindful meditation.''',
                      align: TextAlign.left,
                      color: AppColors.darkPurple,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5000000);
    path_0.arcToPoint(Offset(size.width * 0.5000000, 0),
        radius:
            Radius.elliptical(size.width * 1.429010, size.height * 0.6579540),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 1.428999, size.height * 0.6579492),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height),
        radius:
            Radius.elliptical(size.width * 1.429020, size.height * 0.6579588),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(0, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 1.429020, size.height * 0.6579588),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height * 0.01000000), [
      AppColors.mint.withOpacity(0.6),
      AppColors.mint.withOpacity(0.6),
      AppColors.mint.withOpacity(0.6),
      AppColors.darkPurple.withOpacity(0.5)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
