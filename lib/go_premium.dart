import 'package:amica_task_one/Model/PlansDM.dart';
import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({Key? key}) : super(key: key);

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  int selectedPlan = 0;
  List plans = [
    PlansDM("1 Month", 4.2),
    PlansDM("6 Month", 25.20, discount: 0.2),
    PlansDM("1 Year", 50.4, discount: 0.3),
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
          child: Text(
            "Go Premium",
            style: GoogleFonts.nunito(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Background(
          child: Container(
            margin: EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                AppComponents.backButton(context),
                Image.asset("assets/Images/go_premium.png"),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Premium Plans",
                    style: GoogleFonts.nunito(
                        color: AppColors.darkPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                RegularNunito(
                    input:
                        "Go premium and enjoy the full experience\nof our application without any distraction",
                    color: AppColors.black,
                    align: TextAlign.center),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Select your plan",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: plans.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  color: selectedPlan == i
                                      ? AppColors.darkPurple
                                      : AppColors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RegularNunito(
                                          input: "${plans[i].duration} Plan",
                                          color: selectedPlan == i
                                              ? AppColors.white
                                              : AppColors.darkPurple,
                                          align: TextAlign.left),
                                      Text(
                                        "${plans[i].currentPrice} \$/ Month",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: selectedPlan == i
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                            color: selectedPlan == i
                                                ? AppColors.white
                                                : AppColors.darkPurple),
                                      ),
                                    ],
                                  ),
                                  plans[i].discount == null
                                      ? Container(
                                          height: 0,
                                          width: 0,
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RegularNunito(
                                                input:
                                                    "${plans[i].discount * 100}% Discount Offer",
                                                color: AppColors.yellow,
                                                align: TextAlign.left),
                                            Text(
                                              "${plans[i].price} \$",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 16,
                                                  fontWeight: selectedPlan == i
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                                  color: AppColors.yellow,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 3),
                                            ),
                                          ],
                                        )
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                selectedPlan = i;
                              });
                            },
                          );
                        }),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Container(
                  child: AppComponents.bottomButton(
                      context,
                      () {},
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RegularNunito(
                            color: AppColors.white,
                            align: TextAlign.center,
                            input: "Processed to Payment",
                          ),
                          Text(
                            "",
                            style: GoogleFonts.nunito(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
