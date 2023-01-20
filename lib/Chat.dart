import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      "Hello, I'm Amica Your Friend here for you.. ",
      "I am Your virtual Personal Assistant for all your Health related goals. let me ask you a couple of questions to get to know you better! \n OR \nIf You like you can chat with one of ourcertified assistant"
    ];
    return Scaffold(
        backgroundColor: AppColors.lightGrey,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.lightMint,
                            AppColors.lavender,
                            AppColors.lavender,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: ListView.builder(
                                itemCount: texts.length,
                                itemBuilder: (context, i) {
                                  return BubbleNormal(
                                      text: texts[i],
                                      isSender: false,
                                      color: AppColors.white,
                                      tail: true,
                                      textStyle: GoogleFonts.nunito(
                                          color: AppColors.darkPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal));
                                }),
                          ),
                          AppComponents.bottomButton(
                            context,
                            () {},
                            RegularNunito(
                                input: "Continue with Amica",
                                color: AppColors.white,
                                align: TextAlign.center),
                          ),
                          AppComponents.bottomButton(
                              context,
                              () {},
                              RegularNunito(
                                  input: "Chat With Assistant",
                                  color: AppColors.white,
                                  align: TextAlign.center),
                              color: AppColors.darkPurple),
                          Expanded(child: Container()),
                          MessageBar(
                            onSend: (_) => print(_),
                            actions: [],
                            messageBarColor: Colors.transparent,
                            sendButtonColor: AppColors.darkPurple,
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.76,
                    left: MediaQuery.of(context).size.width * 0.4,
                    child: MaterialButton(
                      height: MediaQuery.of(context).size.height * 0.07,
                      shape: CircleBorder(),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: AppColors.lightMint,
                      child: Icon(
                        Icons.cancel_outlined,
                        color: AppColors.darkPurple,
                        size: 24,
                      ),
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ]));
  }
}
