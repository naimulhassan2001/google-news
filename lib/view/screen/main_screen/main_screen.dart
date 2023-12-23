import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';
import 'package:google_news/view/screen/following_screen/following_screen.dart';
import 'package:google_news/view/screen/for_you_screen/for_you_screen.dart';
import 'package:google_news/view/screen/newsstand_screen/newsstand_screen.dart';

import '../bangladesh/bangladesh_screen.dart';
import '../headlines_screen/headlines_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List navigationPagesList = [
    const ForYouScreen(),
    HeadlinesScreen(),
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
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    const SliverAppBar(
                      pinned: true,
                      bottom: TabBar(
                          indicatorColor: Colors.blue,
                          indicatorWeight: 5,
                          isScrollable: true,
                          labelColor: Colors.blue,
                          tabs: [
                            Tab(
                              text: "Latest",
                            ),
                            Tab(
                              text: "bangladesh",
                            ),
                            Tab(
                              text: "word",
                            ),
                            Tab(
                              text: "Business",
                            ),
                            Tab(
                              text: "Entertainment",
                            ),
                            Tab(
                              text: "Sports",
                            ),
                          ]),
                    )
                  ],
              body: TabBarView(children: [
                Center(child: Text("Latest")),
                Center(child: Text("bangladesh")),
                Center(child: Text("word")),
                Center(child: Text("Business")),
                Center(child: Text("Entertainment")),
                Center(child: Text("Sports")),
              ])),
        ),
      ),
    );
  }
}
