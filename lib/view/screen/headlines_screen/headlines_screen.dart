import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';
import '../../../utils/app_image.dart';
import '../headlines_screen/widget/listview_item.dart';

class HeadLinesScreen extends StatelessWidget {
  HeadLinesScreen({super.key});

  ScrollController scrollController = ScrollController() ;
  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          body: NestedScrollView(
              controller: scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
                  pinned: true,
                  bottom: const TabBar(
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
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return const ListViewItem();
                    },
                  ),
                )),

              ])),
        ),
      ),
    );
  }
}
