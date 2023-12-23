import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/view/screen/main_screen/main_screen.dart';

import '../../../controller/main_screen_controller.dart';
import '../../../utils/app_image.dart';

class NewsStandScreen extends StatelessWidget {
  NewsStandScreen({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
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
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => Switch(
                    value: mainScreenController.darkTheme.value,
                    onChanged: (value) {
                      mainScreenController.changeTheme(value);

                      if (value == true) {
                        Get.changeTheme(ThemeData.dark());
                      } else {
                        Get.changeTheme(ThemeData.light());
                      }

                      // Get.offAll(MainScreen());
                    }




                    ))
              ],
            );
          }, childCount: 1))
        ],
      ),
    );
  }
}
