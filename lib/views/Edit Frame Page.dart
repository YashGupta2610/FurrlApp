import 'package:flurr_app/controllers/EditFrameController.dart';
import 'package:flurr_app/views/Widgets/AppBar.dart';


import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../utils/Constants.dart';

class EditFramePage extends StatelessWidget {
  const EditFramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBar(title: "Edit Frame"),
      body: _showBody(context),
    );
  }

  //Body Widget
  Widget _showBody(context) {
    return GetBuilder<EditFrameController>(builder: (ctrl) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: ctrl
                  .frameEditList, //List of Widgets to make the frame is called in a stack
            )),
            Container(
              padding: EdgeInsets.all(8),
              width: Get.width, // Gets the width of the screen
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  ctrl.saveFrame(); //Imp: To save the frame and show as preview
                },
                style: AppStyle.primaryButtonStyle,
                child: Text(
                  "Save",
                  style: AppStyle.heading(AppStyle.textWhite),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: Get.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Get.back(); //Going back to the View Frame page without saving the Edited Frame
                },
                style: AppStyle.secondaryButtonStyle,
                child: Text(
                  "Cancel",
                  style: AppStyle.heading(AppStyle.accentColor),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
