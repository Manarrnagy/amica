import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    const mediumPurple = const Color(0xff263F77); //app bar purple
    const grey = const Color(0xff4B5355); //font grey
    const lightMint = const Color(0xffEAFCFE);
    const lightPurple = const Color(0xffE7ECFF);
    const mint = const Color(0xff6AC6BB);
    const babyBlue = const Color(0xffEAF7FD);
    //const faded babyBlue
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: babyBlue,
          //height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 377,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/Images/sun-sunset.png",
                      fit: BoxFit.cover,
                      width: 674,
                      height: 388,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            babyBlue,
                          ],
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      top: 44, //48,
                      start: 160, //302,
                      // end: -100,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          "assets/Images/avatar.png",
                        ),
                        radius: 34 + 2,
                        //  24,
                      ),
                    ),
                    PositionedDirectional(
                      top: 78, //48,
                      end: -5, //302,
                      // end: -100,
                      child: FloatingActionButton(
                        // shape: ShapeBorder(),
                        onPressed: () {
                          Drawer(
                            child: Container(
                              color: babyBlue,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Good Evening",
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mediumPurple,
                ),
              ),
              Text(
                "Hope you had a wonderful day",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: mediumPurple),
              ),
              MaterialButton(
                onPressed: () {},
                color: mint,
                minWidth: 325,
                height: 40,
                child: Text(
                  "How you feeling today ?",
                  style: GoogleFonts.nunito(fontSize: 16, color: Colors.white),
                ),
                splashColor: mediumPurple,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              //--------------------------------------------------
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1434.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1436.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1438.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1439.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1440.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/Group 1441.png")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //---------------------------------------------
              Container(
                height: 130,
                margin: EdgeInsets.only(right: 50, left: 50),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 17,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: mediumPurple,
                      minWidth: 66,
                      height: 66,
                      child: Image.asset(
                        "assets/Images/Group 253.png",
                        color: mint,
                      ),
                      splashColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: mediumPurple,
                      minWidth: 66,
                      height: 66,
                      child: Image.asset(
                        "assets/Images/edit.png",
                        color: mint,
                      ),
                      splashColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: mediumPurple,
                      minWidth: 66,
                      height: 66,
                      child: Image.asset(
                        "assets/Images/music-alt.png",
                        color: mint,
                      ),
                      splashColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    Text(
                      "  Breath",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: mediumPurple,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      "Assessments",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: mediumPurple,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      "Music",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: mediumPurple,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 235,
                    decoration: BoxDecoration(
                        //color: mediumPurple,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(300))),
                    child: Image.asset(
                      "assets/Images/pexels-igor-haritanovich-1687341.png",
                      width: 375,
                      height: 375,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 235,
                    decoration: BoxDecoration(
                        color: mediumPurple.withAlpha(180),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(300))),
                  ),
                  Positioned(
                      top: 18,
                      left: 25,
                      child: Text(
                        "Features",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 65, left: 25),
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 20, bottom: 10),
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.centerLeft,
                            width: 153,
                            height: 99,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Images/Group 554.png")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 20, bottom: 10),
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.centerLeft,
                            width: 153,
                            height: 99,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Images/Group 555.png")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Text(
                          "Tackling\nMy Depression ",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.white),
                        ),
                        Container(
                          width: 60,
                        ),
                        Text(
                          "Managing\nMy Anxiety ",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),

              //-------------------------------------------
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 235,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                    child: Image.asset(
                      "assets/Images/pexels-faik-akmd-1025469.png",
                      width: 375,
                      height: 375,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 235,
                    decoration: BoxDecoration(
                        color: mediumPurple.withAlpha(180),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(300),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                  Positioned(
                      top: 18,
                      right: 25,
                      child: Text(
                        "Exercise",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 65, left: 40),
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 20, bottom: 10),
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.centerLeft,
                            width: 153,
                            height: 99,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Images/Group 553.png")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 20, bottom: 10),
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.centerLeft,
                            width: 153,
                            height: 99,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Images/Group 552.png")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Text(
                          "Mind Training ",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.white),
                        ),
                        Container(
                          width: 70,
                        ),
                        Text(
                          "Meditation Training ",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Text(
                  "Upcoming Trips",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mediumPurple),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 50),
                child: Image.asset("assets/Images/Group 260.png"),
              ),
              Text(
                "More Trips Comming Soon",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: mediumPurple),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 50),
                child: Text(
                  "We are Preparing amazing and most\nrelaxing trips for you stay tuned",
                  style: GoogleFonts.nunito(fontSize: 16, color: mediumPurple),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
