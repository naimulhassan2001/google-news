import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/following_controller.dart';
import 'package:google_news/utils/app_image.dart';
import 'package:google_news/view/screen/following_screen/widget/follow_container.dart';
import 'package:google_news/view/screen/following_screen/widget/recenntly_gridview.dart';
import 'package:google_news/view/widget/custom_button.dart';
import 'package:google_news/view/widget/custom_outline_button.dart';
import 'package:google_news/view/widget/custom_text.dart';

import '../../../controller/main_screen_controller.dart';
import 'widget/follow_interests_warp.dart';

class FollowingScreen extends StatelessWidget {
  FollowingScreen({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {

    var currentTheme = MediaQuery.of(context).platformBrightness ;

    if(currentTheme == Brightness.dark ) {
      mainScreenController.darkTheme.value = true;
    } else {
      mainScreenController.darkTheme.value = false;

    }
    var width = (MediaQuery.of(context).size.width) / 10;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Obx(() => Text(mainScreenController.title.value)),
            centerTitle: true,
            floating: true,
            snap: true,
            leading: const Icon(Icons.search),
            actions: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipOval(child: Image.asset(AppImage.nayem)),
                  ),
                ),
              )
            ],
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 24, bottom: 8),
                  child: Column(
                    children: [
                      CustomText(
                        title: "Recently followed",
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(height: 115, child: RecentlyGridView()),
                    ],
                  ),
                ),
                Obx(() => Container(
                  width: double.infinity,
                  height: 8,
                  color: mainScreenController.darkTheme.value ?  Colors.white12 : Colors.black12,
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            title: "Follow your interests",
                            fontSize: 24,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_sharp))
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                          "Choose topics that 'll appear in your for you news feed and under what yoour are following"),
                      const SizedBox(
                        height: 16,
                      ),
                      FollowInterestsWarp(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButtonOutLine(
                            title: "see more topics",
                            onTap: () {},
                            radius: 80,
                            fontSize: 14,
                            height: 34,
                            horizontal: width,
                          ),
                          CustomButton(
                            title: "Done",
                            onTap: () {},
                            height: 34,
                            radius: 80,
                            horizontal: width,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Obx(() => Container(
                  width: double.infinity,
                  height: 8,
                  color: mainScreenController.darkTheme.value ?  Colors.white12 : Colors.black12,
                )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: FollowContainer(),
                ),
              ],
            );
          }, childCount: 1))

        ],
      ),
    );
  }
}
