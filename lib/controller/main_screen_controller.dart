import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool darkTheme = false.obs;
  RxBool tabShow = false.obs;

  RxString aa = "Latest".obs ;

  RxString title = "Google News".obs;


  changeTheme(bool value) {
    darkTheme.value =value ;
  }

  bottomOnTap(int value) {
    currentIndex.value = value;
    if (value == 0) {
      title.value = "Google News";

    } else if (value == 1) {
      title.value = "Headlines";
    } else if (value == 2) {
      title.value = "Following";

    } else if (value == 3) {
      title.value = "Newsstand";

    }
  }


  themeCircleBackgroundColor() {
    return darkTheme.value
        ? Colors.black
        : Colors.white ;
  }



  themeTextColor(){
   return darkTheme.value
        ? Colors.white
        : Colors.black ;
  }


  themeContainerColor() {
    return darkTheme.value
        ? Colors.white12
        : Colors.black12 ;
  }






}
