import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/utils/app_string.dart';
import 'package:google_news/view/screen/newsstand_screen/widget/catagories_list.dart';
import 'package:google_news/view/widget/custom_text.dart';

import '../../../controller/main_screen_controller.dart';
import '../../../utils/app_image.dart';
import '../main_screen/sliver_appbar/sliver_appbar.dart';
import 'widget/entertainment_listview.dart';

class NewsStandScreen extends StatelessWidget {
  NewsStandScreen({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());
  // ThemeManager themeManager = Get.put(ThemeManager()) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: AppString.suggestedSources,
                      fontSize: 12,
                      color: const Color(0x6C000000),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CategoriesList(
                    color: Colors.blue, categories: AppString.entertainment),
                Obx(
                  () => Container(
                    width: double.infinity,
                    height: 8,
                    color: mainScreenController.themeContainerColor()

                  ),
                ),
                CategoriesList(
                    color: Colors.black, categories: AppString.foodAndDrink),
                Obx(
                  () => Container(
                    width: double.infinity,
                    height: 8,
                      color: mainScreenController.themeContainerColor()

                  ),
                ),
                CategoriesList(
                    color: Colors.deepPurple,
                    categories: AppString.healthAndFitness),
                Obx(
                  () => Container(
                    width: double.infinity,
                    height: 8,
                      color: mainScreenController.themeContainerColor()

                  ),
                ),
                CategoriesList(
                    color: Colors.brown, categories: AppString.homeAndGarden),
                Obx(
                  () => Container(
                    width: double.infinity,
                    height: 8,
                      color: mainScreenController.themeContainerColor()

                  ),
                ),
                CategoriesList(
                    color: Colors.lightBlue,
                    categories: AppString.newsAndPolitics),
                Obx(
                  () => Container(
                    width: double.infinity,
                    height: 8,
                      color: mainScreenController.themeContainerColor()

                  ),
                ),
                CategoriesList(
                    color: Colors.teal, categories: AppString.sports),
              ],
            );
          }, childCount: 1))
        ],
      ),
    );
  }
}
