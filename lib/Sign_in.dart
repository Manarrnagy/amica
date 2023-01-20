import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    IconData visibility = Icons.visibility_outlined;
    bool secured = true;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();

    emailController.text = "a.mohamed@domain";

    return Scaffold(
      body: Background(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 120, bottom: 40),
                  child: Image.asset("assets/Images/birdLogo.png")),
              BoldNunito(
                  input: "Sign In",
                  color: AppColors.darkPurple,
                  align: TextAlign.center),
              Container(
                margin:
                    EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 40),
                child: Form(
                    key: formstate,
                    child: Column(
                      children: [
                        TextFormField(
                          style: GoogleFonts.nunito(color: AppColors.black),
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(
                                color: AppColors.darkPurple, fontSize: 16),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.mint, width: 1),
                            ),
                          ),
                          controller: emailController,
                        ),
                        TextFormField(
                          style: GoogleFonts.nunito(color: AppColors.black),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: AppColors.darkPurple,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: AppColors.darkPurple, fontSize: 16),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.mint, width: 1),
                            ),
                          ),
                          controller: passwordController,
                        ),
                      ],
                    )),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Home(),
                    ),
                  );
                },
                color: AppColors.mint,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 40,
                child: RegularNunito(
                  input: "SignIn",
                  color: AppColors.white,
                  align: TextAlign.center,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RegularNunito(
                      input: "Don't have an account?",
                      color: AppColors.black,
                      align: TextAlign.center),
                  Text(
                    "sign up now",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColors.darkPurple),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
