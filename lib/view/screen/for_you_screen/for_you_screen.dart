import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/view/screen/for_you_screen/widget/listview_item.dart';
import 'package:google_news/view/widget/custom_text.dart';

import '../../../controller/main_screen_controller.dart';
import '../../../utils/app_image.dart';
import '../headlines_screen/widget/listview_item.dart';
import '../main_screen/sliver_appbar/sliver_appbar.dart';

class ForYouScreen extends StatelessWidget {
  ForYouScreen({super.key});
  MainScreenController mainScreenController = Get.put(MainScreenController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBarWidget(),

            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24 ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomText(title: "Top Stories", fontSize: 20, color: Colors.blue),
                        const SizedBox(width: 8,),
                        const Icon(Icons.arrow_forward_ios_sharp, size: 16, color: Colors.blue,)
                      ],
                    ),
                    const SizedBox(height: 16,),

                    SizedBox(
                      height: (50*110) ,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return const ForYouListViewItem();
                        },
                      ),
                    ),

                  ],
                ),
              );
            }, childCount: 1))

          ],
        ),
    );
  }
}
