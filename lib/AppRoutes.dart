import 'package:flurr_app/views/Edit%20Frame%20Page.dart';
import 'package:flurr_app/views/View Page.dart';

import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object

  //Declaring a list of Named Routes for the app to navigate.
  static final routes = [
    GetPage(
        name: '/', page: () => const ViewFramePage(), transition: Transition.fade),
    GetPage(
        name: '/editFrame',
        page: () => const EditFramePage(),
        transition: Transition.fade),
  ];
}
