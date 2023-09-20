import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AppRoutes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  //Declaring GetMetarialApp and initializing a route along with the other AppRoutes
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
