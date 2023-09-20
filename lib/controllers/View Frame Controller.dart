import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../models/Frame Image Model.dart';

class ViewFrameController extends GetxController{
  static ViewFrameController to = Get.find();

  List<FrameModel> imgList = []; //List for image Data

  List<Widget> frameList = <Widget>[] ; // List of Widgets to create a Frame.


  //Init Function to declare a dummy frame for the application to start with.
  @override
  void onInit() {
    imgList = [
      FrameModel(img: 'assets/1.png'),
      FrameModel(img: 'assets/01.png', yPosition: 100, xPosition: 30),
      FrameModel(img: 'assets/2.png', yPosition: 180),
      FrameModel(img: 'assets/3.png', xPosition: 209),
      FrameModel(img: 'assets/4.png',yPosition: 190),
      FrameModel(img: 'assets/5.png',xPosition: 90),
    ];
    makeFrame();
    super.onInit();
  }

  void makeFrame(){
    //Frame being by adding Widget into the widget list.
    frameList = [];
    imgList.forEach((element) {
      frameList.add(
          AnimatedPositioned(
            duration: Duration(milliseconds: 900),
            curve: Curves.easeIn,
            top: element.yPosition,
            left: element.xPosition,child: Transform.scale(
              scale: element.scale,
              child: Image.asset(element.img)),
    )
    );
    });
  }


  //Function to navigate to Edit Frame Page
  void gotoEditFramePage()
  {
    Get.toNamed("/editFrame");
  }

}
