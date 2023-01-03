import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';
import 'theme/AppColors.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var genderController = TextEditingController();
    var DateOfBirth = TextEditingController();
    final formGlobalKey = GlobalKey<FormState>();

    firstNameController.text = "Mona";
    lastNameController.text = "Mohamed";
    emailController.text = "Mona.mohamed@domain";
    phoneController.text = "0020 0123456789";
    genderController.text = "Female";
    DateOfBirth.text = "22-12-1990";

    bool isEmailValid(String email) {
      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern.toString());
      return regex.hasMatch(email);
    }

    bool isNameValid(String name) {
      Pattern pattern =
          r"^([a-zA-Z]{2,}\s[a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)";
      RegExp regex = RegExp(pattern.toString());
      return regex.hasMatch(name);
    }

    return Scaffold(
        // gradient: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   colors: [
        //     AppColors.lightMint,
        //     AppColors.lavender,
        //   ],
        // ),
        // //-----------------------------------App Bar-----------------------------
        appBar: CustomAppBar(
          height: 85,
          avatarHeight: 24,
          avatartop: 48,
          avatarStart: 302,
          child: Container(
            height: 22,
            child: Text("My Account",
                style: GoogleFonts.nunito(fontSize: 16, color: Colors.white)
                //TextStyle(fontSize: 16, fontFamily: ),
                ),
          ),
        ),
        body: Background(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
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
                      color: AppColors.grey,
                    ),
                    label: Text(
                      'Back',
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold),
                    ), // <-- Text
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    labelStyle:
                        TextStyle(color: AppColors.darkPurple, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mint, width: 1),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: firstNameController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    labelStyle:
                        TextStyle(color: AppColors.darkPurple, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mint, width: 1),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: lastNameController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    labelStyle:
                        TextStyle(color: AppColors.darkPurple, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mint, width: 1),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: emailController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle:
                        TextStyle(color: AppColors.darkPurple, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mint, width: 1),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: phoneController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                    labelStyle:
                        TextStyle(color: AppColors.darkPurple, fontSize: 16),
                    //fillColor: lightMint,
                    //filled: lightMint,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mint, width: 1),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: genderController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: AppColors.darkPurple,
                      ),
                      labelText: 'Date of birth',
                      fillColor: AppColors.darkPurple,
                      labelStyle:
                          TextStyle(color: AppColors.darkPurple, fontSize: 16),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.mint,
                            width: 1,
                            style: BorderStyle.solid),
                      )
                      //iconColor: mediumPurple,
                      ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  controller: DateOfBirth,
                ),
                Center(
                    child: AppComponents.bottomButton(
                        context, "Save Changes", () {}))
              ],
            ),
          ),
        ));
  }
}
