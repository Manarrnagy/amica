import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final listItems = [
      "My Account",
      "Happiness Coins",
      "Settings",
      "Self Report",
      "My Appointments",
      "My wallet",
      "عربي",
      "Change Password"
    ];
    final listIcons = [
      Icons.people_outline_rounded,
      Icons.star_border_outlined,
      Icons.settings,
      Icons.report,
      Icons.calendar_month,
      Icons.wallet_travel_outlined,
      Icons.smart_button,
      Icons.lock_open_outlined
    ];
    return Scaffold(
      //-----------------------------------App Bar-----------------------------
      appBar: CustomAppBar(
        height: 194,
        avatarHeight: 56,
        avatartop: 105,
        avatarStart: 238,
        child: Container(
          //height: 22,
          //width: 36,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //----------------------Back button----------------------
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        size: 16.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Back',
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "Mona",
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mohamed",
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Level 4 Happiness maker",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 300,
                top: 60,
                child: InkWell(
                  child: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                        border: Border.all(color: AppColors.mint)),
                    child: Icon(Icons.add, color: AppColors.mint),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      //--------------------------------------Body------------------
      body: Background(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
            //height: 200,
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_box_outlined,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'My Account',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline_rounded,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'Happiness Coins',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'Settings',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.doc_richtext,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'Self Reports',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_outlined,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'My Appointments',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'My Wallet',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.textbox,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'عربي',
                          style: GoogleFonts.cairo(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color
                            elevation: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock_outline_rounded,
                          size: 20.0,
                          color: AppColors.darkPurple,
                        ),
                        label: Text(
                          'Change Password',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: AppColors.darkPurple,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                      ),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: AppColors.mint))),
                      width: 325,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    color: AppColors.mint,
                    minWidth: 325,
                    height: 59,
                    child: Column(
                      children: [
                        Text(
                          "Upgrade to premium plan",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Enjoy our unlimited features without ads",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    splashColor: AppColors.darkPurple,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                Text(
                  "About Amica",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.darkPurple,
                  ),
                ),
                Text(
                  "FAQs",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.darkPurple,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact & support",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.darkPurple,
                      ),
                    ),
                    Container(
                      width: 100,
                    ),
                    Text(
                      "Sign out",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: AppColors.darkPurple,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.exit_to_app_rounded,
                      color: AppColors.darkPurple,
                      size: 24,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Build Serial: V8.0.1",
                    style:
                        GoogleFonts.nunito(fontSize: 10, color: AppColors.grey),
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
