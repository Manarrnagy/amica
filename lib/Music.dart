import 'package:amica_task_one/Model/SongDM.dart';
import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/View/Components.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/CustomAppBar.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  int pageIndex = 0;
  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1);

  List<String> categories = [
    "All Songs",
    "Sleep",
    "Relax",
    "Meditation",
    "other",
  ];
  List<SongDM> songs = [
    SongDM(
        "Song 1", "Artist Name", "assets/Images/Music/song1.png", "meditation"),
    SongDM("Song 2", "Artist Name", "assets/Images/Music/song2.png", "other"),
    SongDM("Song 3", "Artist Name", "assets/Images/Music/song3.png", "other"),
    SongDM("Song 4", "Artist Name", "assets/Images/Music/song4.png", "relax"),
    SongDM("Song 5", "Artist Name", "assets/Images/Music/song5.png", "relax"),
    SongDM("Song 6", "Artist Name", "assets/Images/Music/song6.png", "sleep"),
    SongDM("Song 7", "Artist Name", "assets/Images/Music/song7.png", "other"),
    SongDM("Song 8", "Artist Name", "assets/Images/Music/song8.png", "other"),
  ];
  List<SongDM> favourites = [
    // SongDM(
    //     "Song 1", "Artist Name", "assets/Images/Music/song1.png", "meditation"),
    // SongDM("Song 2", "Artist Name", "assets/Images/Music/song2.png"),
    // SongDM("Song 3", "Artist Name", "assets/Images/Music/song3.png"),
    // SongDM("Song 4", "Artist Name", "assets/Images/Music/song4.png"),
  ];
  late List<SongDM> filteredSongs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 85,
        avatarHeight: 24,
        avatartop: 48,
        avatarStart: 302,
        child: const SizedBox(
          height: 22,
          child: RegularNunito(
            input: "Music",
            color: Colors.white,
            align: TextAlign.left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Background(
          child: Container(
            margin: const EdgeInsets.only(
              left: 34,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppComponents.backButton(context),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 15),
                  child: const BoldNunito(
                      input: "Browse",
                      color: AppColors.darkPurple,
                      align: TextAlign.left),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.055,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: categories.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                child: Container(
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: pageIndex == i
                                          ? AppColors.darkPurple
                                          : AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppColors.darkPurple)),
                                  child: RegularNunito(
                                    input: categories[i],
                                    color: pageIndex == i
                                        ? AppColors.white
                                        : AppColors.darkPurple,
                                    align: TextAlign.center,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    pageIndex = i;
                                    if (i < categories.length) {
                                      filteredSongs = songs
                                          .where((e) => e.category.contains(
                                              categories[i].toLowerCase()))
                                          .toList();
                                    }
                                  });
                                },
                              );
                            }),
                      ],
                    ),
                  ),
                ),
                DefaultTabController(
                  length: 1,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: [
                        SizedBox(
                          //height: MediaQuery.of(context).size.height * 0.7,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: pageIndex == 0
                                        ? songs.length
                                        : filteredSongs.length,
                                    itemBuilder: (context, i) {
                                      return pageIndex == 0
                                          ? Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              songs[i]
                                                                  .songImgUrl,
                                                            ),
                                                          ),
                                                        ),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.22,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.38,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Positioned(
                                                        child: InkWell(
                                                          child: Container(
                                                            child:
                                                                songs[i].isFav ==
                                                                        true
                                                                    ? Icon(
                                                                        Icons
                                                                            .favorite_rounded,
                                                                        color: AppColors
                                                                            .darkPurple,
                                                                      )
                                                                    : Icon(
                                                                        Icons
                                                                            .favorite_outline_rounded,
                                                                        color: AppColors
                                                                            .darkPurple,
                                                                      ),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: AppColors
                                                                    .mint),
                                                            width: 40,
                                                            height: 40,
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              if (songs[i]
                                                                  .isFav) {
                                                                songs[i].isFav =
                                                                    false;
                                                                favourites
                                                                    .remove(
                                                                        songs[
                                                                            i]);
                                                              } else {
                                                                songs[i].isFav =
                                                                    true;
                                                                favourites.add(
                                                                    songs[i]);
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.16,
                                                        left: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.15,
                                                      ),
                                                    ],
                                                    clipBehavior: Clip.none,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      songs[i].songName,
                                                      style: GoogleFonts.nunito(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: AppColors
                                                              .darkPurple,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  RegularNunito(
                                                      input:
                                                          songs[i].artistName,
                                                      color: AppColors.black,
                                                      align: TextAlign.center)
                                                ],
                                              ),
                                            )
                                          : Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              filteredSongs[i]
                                                                  .songImgUrl,
                                                            ),
                                                          ),
                                                        ),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.22,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.38,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Positioned(
                                                        child: InkWell(
                                                          child: Container(
                                                            child: filteredSongs[
                                                                            i]
                                                                        .isFav ==
                                                                    true
                                                                ? Icon(
                                                                    Icons
                                                                        .favorite_rounded,
                                                                    color: AppColors
                                                                        .darkPurple,
                                                                  )
                                                                : Icon(
                                                                    Icons
                                                                        .favorite_outline_rounded,
                                                                    color: AppColors
                                                                        .darkPurple,
                                                                  ),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: AppColors
                                                                    .mint),
                                                            width: 40,
                                                            height: 40,
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              if (filteredSongs[
                                                                      i]
                                                                  .isFav) {
                                                                filteredSongs[i]
                                                                        .isFav =
                                                                    false;
                                                                songs.forEach(
                                                                    (element) {
                                                                  if (filteredSongs[
                                                                              i]
                                                                          .songId ==
                                                                      element
                                                                          .songId) {
                                                                    element.isFav =
                                                                        false;
                                                                  }
                                                                });

                                                                favourites.remove(
                                                                    filteredSongs[
                                                                        i]);
                                                              } else {
                                                                filteredSongs[i]
                                                                        .isFav =
                                                                    true;
                                                                songs.forEach(
                                                                    (element) {
                                                                  if (filteredSongs[
                                                                              i]
                                                                          .songId ==
                                                                      element
                                                                          .songId) {
                                                                    element.isFav =
                                                                        true;
                                                                  }
                                                                });

                                                                favourites.add(
                                                                    songs[i]);
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.16,
                                                        left: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.15,
                                                      ),
                                                    ],
                                                    clipBehavior: Clip.none,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      filteredSongs[i].songName,
                                                      style: GoogleFonts.nunito(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: AppColors
                                                              .darkPurple,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  RegularNunito(
                                                      input: filteredSongs[i]
                                                          .artistName,
                                                      color: AppColors.black,
                                                      align: TextAlign.center)
                                                ],
                                              ),
                                            );
                                    })
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const BoldNunito(
                      input: "Favourites",
                      color: AppColors.darkPurple,
                      align: TextAlign.left),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: favourites.length,
                            itemBuilder: (context, i) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              favourites[i].songImgUrl,
                                            ),
                                          ),
                                        ),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        alignment: Alignment.center,
                                      ),
                                      Positioned(
                                        child: AppComponents.imageIconButton(
                                            "assets/Images/trash.png", () {
                                          setState(() {
                                            songs.forEach((element) {
                                              if (favourites[i].songId ==
                                                  element.songId) {
                                                element.isFav = false;
                                              }
                                            });

                                            favourites.remove(favourites[i]);
                                          });
                                        }),
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.16,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                      ),
                                    ],
                                    clipBehavior: Clip.none,
                                  ),
                                  Container(
                                    child: Text(
                                      favourites[i].songName,
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.darkPurple,
                                          fontSize: 16),
                                    ),
                                  ),
                                  RegularNunito(
                                      input: favourites[i].artistName,
                                      color: AppColors.black,
                                      align: TextAlign.center),
                                ],
                              );
                            })
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: AppComponents.bottomButton(
                      context,
                      () {},
                      RegularNunito(
                          input: "Play Now list",
                          color: AppColors.white,
                          align: TextAlign.center)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
