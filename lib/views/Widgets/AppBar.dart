import 'package:flurr_app/utils/Constants.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

//Class for a re-usable App Bar
class CustomAppBar {
  static AppBar customAppBar({String title = ''}) {
    return AppBar(
      backgroundColor: AppStyle.textWhite,
      elevation: 0.1,
      leading: BackButton(
        color: AppStyle.textBlack,
        onPressed: () {
          Get.back();
        },
      ),
      //Title of the AppBar
      title: Text(
        title,
        style: AppStyle.heading(AppStyle.textBlack),
      ),

      //Adding action icon buttons at the end of AppBar
      actions: [
        IconButton(
          icon: Image.asset('assets/Search.png'),
          // iconSize: 50,
          color: AppStyle.textBlack,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/Whislist.png'),
          // iconSize: 50,
          color: AppStyle.textBlack,

          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/Bag.png'),
          // iconSize: 50,
          color: AppStyle.textBlack,

          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
