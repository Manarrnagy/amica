import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

enum Themes { Automatic, Dark, Light }

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    bool status2 = true;
    Themes? _theme = Themes.Automatic;

    final List images = [
      Image.asset("assets/Images/mountains-clouds.png"),
      Image.asset("assets/Images/pexels-eberhard-grossgasteiger-1287145.png"),
      Image.asset("assets/Images/mountains-clouds.png"),
      Image.asset("assets/Images/pexels-eberhard-grossgasteiger-1287145.png")
    ];
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      //-----------------------------------App Bar-----------------------------
      appBar: CustomAppBar(
        height: 85,
        avatarHeight: 24,
        avatartop: 48,
        avatarStart: 302,
        child: Container(
          height: 22,
          child: Text("Settings",
              style: GoogleFonts.nunito(fontSize: 16, color: Colors.white)),
        ),
      ),
      body: Background(
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                //width: 36,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Background color
                      elevation: 0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: 16.0,
                    color: AppColors.darkPurple,
                  ),
                  label: Text(
                    'Back',
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.darkPurple,
                        fontWeight: FontWeight.bold),
                  ), // <-- Text
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable Notification",
                    style: GoogleFonts.nunito(
                        color: AppColors.darkPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  FlutterSwitch(
                    width: 54.0,
                    height: 22.0,
                    valueFontSize: 0.0,
                    toggleSize: 16.0,
                    toggleColor: AppColors.mint,
                    inactiveColor: Colors.white,
                    activeColor: AppColors.mint,
                    activeToggleColor: Colors.white,
                    value: status,
                    borderRadius: 30.0,
                    padding: 0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alarm Notification",
                    style: GoogleFonts.nunito(
                        color: AppColors.darkPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  FlutterSwitch(
                    width: 54.0,
                    height: 22.0,
                    valueFontSize: 0.0,
                    toggleSize: 16.0,
                    toggleColor: AppColors.mint,
                    inactiveColor: Colors.white,
                    activeColor: AppColors.mint,
                    activeToggleColor: Colors.white,
                    value: status2,
                    borderRadius: 30.0,
                    padding: 0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status2 = val;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Theme Color",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.darkPurple),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Automatic Detect',
                    style: GoogleFonts.nunito(
                        fontSize: 16, color: AppColors.darkPurple)),
                leading: Radio<Themes>(
                  activeColor: Color.fromRGBO(112, 205, 195, 1),
                  value: Themes.Automatic,
                  groupValue: _theme,
                  onChanged: (Themes? value) {
                    setState(() {
                      _theme = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Dark Mode',
                    style: GoogleFonts.nunito(
                        fontSize: 16, color: AppColors.darkPurple)),
                leading: Radio<Themes>(
                  activeColor: Color.fromRGBO(112, 205, 195, 1),
                  value: Themes.Dark,
                  groupValue: _theme,
                  onChanged: (Themes? value) {
                    setState(() {
                      _theme = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Light Mode',
                    style: GoogleFonts.nunito(
                        fontSize: 16, color: AppColors.darkPurple)),
                leading: Radio<Themes>(
                  activeColor: Color.fromRGBO(112, 205, 195, 1),
                  value: Themes.Light,
                  groupValue: _theme,
                  onChanged: (Themes? value) {
                    setState(() {
                      _theme = value;
                    });
                  },
                ),
              ),
              Text(
                "Change Home Gif",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.darkPurple),
              ),
              // CarouselSlider(
              //   items: images
              //       .map((item) => Container(
              //             child: Center(
              //                 child: Image.asset(item,
              //                     fit: BoxFit.cover, width: 100)),
              //           ))
              //       .toList(),
              //   carouselController: buttonCarouselController,
              //   options: CarouselOptions(
              //     autoPlay: false,
              //     enlargeCenterPage: true,
              //     viewportFraction: 0.9,
              //     aspectRatio: 2.0,
              //     initialPage: 2,
              //   ),
              // ),
              // RaisedButton(
              //   onPressed: () => buttonCarouselController.nextPage(
              //       duration: Duration(milliseconds: 300), curve: Curves.linear),
              //   child: Text('→'),
              // )
              ImageSlideshow(
                /// Width of the [ImageSlideshow].
                width: double.infinity,

                /// Height of the [ImageSlideshow].
                height: 151,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/Images/mountains-clouds.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/Images/pexels-eberhard-grossgasteiger-1287145.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/Images/mountains-clouds.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/Images/pexels-eberhard-grossgasteiger-1287145.png',
                    fit: BoxFit.contain,
                  )
                ],

                /// Called whenever the page in the center of the viewport changes.
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                /// Loops back to first slide.
                isLoop: true,
              ),

              MaterialButton(
                onPressed: () {},
                color: AppColors.mint,
                minWidth: 325,
                height: 40,
                child: Text(
                  "Save Changes",
                  style: GoogleFonts.nunito(fontSize: 16, color: Colors.white),
                ),
                splashColor: AppColors.darkPurple,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
