import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  List<Image> badges = [
    new Image.asset("assets/Images/badge.png"),
    new Image.asset("assets/Images/badge.png"),
    new Image.asset("assets/Images/badge.png"),
    new Image.asset("assets/Images/badge.png"),
    new Image.asset("assets/Images/badge.png"),
  ];
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
            input: "Change Password",
            color: Colors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: Background(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppComponents.backButton(context),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoldNunito(
                        input: "Total Coins",
                        color: AppColors.darkPurple,
                        align: TextAlign.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1895  ",
                          style: GoogleFonts.nunito(
                            color: AppColors.yellow,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          "assets/Images/coins.png",
                          //scale: 0.5,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RegularNunito(
                            input:
                                "Achieved Goals\nLevel\nLevel Title\nNext level",
                            color: AppColors.black,
                            align: TextAlign.left),
                        RegularNunito(
                            input: "35\n4\nHappiness maker\n250 point",
                            color: AppColors.black,
                            align: TextAlign.right),
                      ],
                    ),
                  ],
                ),
              ),

              ///-------------------------------------------------
              Divider(
                color: AppColors.mint,
                thickness: 2,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    BoldNunito(
                        input: "My Level Badge",
                        color: AppColors.darkPurple,
                        align: TextAlign.center),
                    CarouselSlider(
                      items: badges,
                      options: CarouselOptions(
                          height: 145.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 600),
                          viewportFraction: 0.25,
                          animateToClosest: true,
                          enlargeFactor: 0.6),
                    ),
                    AppComponents.bottomButton(
                        context,
                        () {},
                        Column(
                          children: [
                            Text(
                              "data",
                              style: GoogleFonts.nunito(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            RegularNunito(
                                input: "And Gain More Extra Points",
                                color: AppColors.white,
                                align: TextAlign.center),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
