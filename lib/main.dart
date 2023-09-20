import 'package:flurr_app/controllers/EditFrameController.dart';
import 'package:flurr_app/controllers/View Frame Controller.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'views/Home Page.dart';

void main() {
  //Initializing Controllers
  Get.put(ViewFrameController());

  Get.lazyPut(() => EditFrameController(), fenix: true);
  runApp(const HomePage());
}
