import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';
import 'package:google_news/view/screen/following_screen/following_screen.dart';
import 'package:google_news/view/screen/for_you_screen/for_you_screen.dart';
import 'package:google_news/view/screen/main_screen/main_screen.dart';
import 'package:google_news/view/screen/newsstand_screen/newsstand_screen.dart';

import '../headlines_screen/headlines_screen.dart';

class MainScreen2 extends StatelessWidget {
  MainScreen2({super.key});

  List navigationPagesList = [
    const ForYouScreen(),
    MainScreen(),
    const FollowingScreen(),
    const NewsStandScreen(),
  ];

  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
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
                  backgroundColor: Colors.white,
                  selectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.bold),
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.white,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  // unselectedItemColor: Colors.black,
                  currentIndex: mainScreenController.currentIndex.value,
                  onTap: (index) {
                    mainScreenController.bottomOnTap(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.add_card_outlined, color: Colors.black),
                      label: "For you",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.blur_circular_sharp,
                            color: Colors.black),
                        label: "Headlines"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.star, color: Colors.black),
                        label: "Following"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.leaderboard_outlined,
                            color: Colors.black),
                        label: "Newsstand"),
                  ])),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    title: Obx(() => Text(mainScreenController.title.value)),
                    centerTitle: true,
                    floating: true,
                    snap: true,
                    leading: const Icon(Icons.search),
                    actions: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person),
                      )
                    ],
                  )
                ],
            body: Obx(() => navigationPagesList[mainScreenController.currentIndex.value])

            ),
      ),
    ));
  }
}
