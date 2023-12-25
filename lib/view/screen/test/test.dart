import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/view/screen/following_screen/widget/follow_container.dart';
import 'package:google_news/view/screen/following_screen/widget/recenntly_gridview.dart';
import 'package:google_news/view/widget/custom_button.dart';
import 'package:google_news/view/widget/custom_outline_button.dart';
import 'package:google_news/view/widget/custom_text.dart';

import '../../../controller/main_screen_controller.dart';
import '../following_screen/widget/follow_interests_warp.dart';


class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());


  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width) / 10;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(value: false, onChanged: (value) {


            print(MediaQuery.of(context).platformBrightness) ;

            if(value == true) {
              Get.changeTheme(ThemeData.dark());

            } else {
              Get.changeTheme(ThemeData.light());

            }

          })
        ],
      ),

    );
  }
}



