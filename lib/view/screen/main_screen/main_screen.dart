import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';
import 'package:google_news/utils/app_theme.dart';
import 'package:google_news/view/screen/following_screen/following_screen.dart';
import 'package:google_news/view/screen/for_you_screen/for_you_screen.dart';
import 'package:google_news/view/screen/newsstand_screen/newsstand_screen.dart';

import '../headlines_screen/headlines_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List navigationPagesList = [
    ForYouScreen(),
    HeadLinesScreen(),
    FollowingScreen(),
    NewsStandScreen(),
  ];

  MainScreenController mainScreenController = Get.put(MainScreenController());


  @override
  Widget build(BuildContext context) {
    var currentTheme = MediaQuery.of(context).platformBrightness;

    if (currentTheme == Brightness.dark) {
      mainScreenController.isDark.value = true;
    } else {
      mainScreenController.isDark.value = false;
    }
    return SafeArea(
        child: DefaultTabController(
      length: 6,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF0668E3),
          ),
          child: Obx(() => BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.bold),
                  showSelectedLabels: true,
                  // unselectedItemColor: Colors.black,
                  currentIndex: mainScreenController.currentIndex.value,
                  onTap: (index) {
                    mainScreenController.bottomOnTap(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.add_card_outlined,
                      ),
                      label: "For you",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.blur_circular_sharp,
                        ),
                        label: "Headlines"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.star,
                        ),
                        label: "Following"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.leaderboard_outlined,
                        ),
                        label: "Newsstand"),
                  ])),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [],
            body: Obx(() =>
                navigationPagesList[mainScreenController.currentIndex.value])),
      ),
    ));
  }
}
