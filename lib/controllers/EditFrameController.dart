import 'package:flurr_app/controllers/View Frame Controller.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../models/Frame Image Model.dart';
import '../views/Widgets/EditFrameWidget.dart';

class EditFrameController extends GetxController{
  static EditFrameController to = Get.find();

  ViewFrameController frCtrl = ViewFrameController.to;

  RxList<Widget> frameEditList = <Widget>[].obs ;
  List<FrameModel> imgEditList = [];

  @override
  void onInit() {
    super.onInit();
    imgEditList = frCtrl.imgList;
    editFrame();
  }
  // Creates the frame which is editable on the screen
  void editFrame(){
    imgEditList.forEach
  (
  (element) {
  frameEditList.add(
  EditingGrid( element: element)); // A custom widget class for each image in frame
  });
}

  void saveFrame(){
    frCtrl.imgList = [];
    frCtrl.imgList = imgEditList;
    //Recalling the makeFrame() function so that the frame is saved and can be previewd
    frCtrl.makeFrame();
    frCtrl.update();
    Get.back();
}


}



