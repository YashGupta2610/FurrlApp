import 'package:flurr_app/controllers/View Frame Controller.dart';
import 'package:flurr_app/utils/Constants.dart';
import 'package:flurr_app/views/Widgets/AppBar.dart';


import 'package:get/get.dart';


import 'package:flutter/material.dart';

class ViewFramePage extends StatelessWidget {
  const ViewFramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      appBar: CustomAppBar.customAppBar(title: "Jenny's Frame"),
      body: _showBody(context),
    );
  }

  //To show the body with the Frame.
  Widget _showBody(context) {
    return GetBuilder<ViewFrameController>(builder: (ctrl) {
      return SingleChildScrollView(
        child: Column(
          children: [
            _userListTile(context),
            _userTextAndTags(context),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: AppStyle.textWhite,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your Frame",
                      style: AppStyle.heading(AppStyle.textBlack),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: frame(context), //Function call
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        ctrl.gotoEditFramePage();
                      },
                      style: AppStyle.secondaryButtonStyle,
                      child: Text(
                        "Edit Frame",
                        style: AppStyle.heading(AppStyle.accentColor),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  //Widget Function to create the Frame
  Widget frame(BuildContext context) {
    return GetBuilder<ViewFrameController>(builder: (ctrl) {
      return SizedBox(
        height: Get.height - 200,
        child: Stack(
          children: ctrl.frameList,
        ),
      );
    });
  }

  //Widget Function to display the user profile picture and name (Static Data)
  Widget _userListTile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        minVerticalPadding: 25,
        tileColor: AppStyle.textWhite,
        leading: SizedBox(
          height: 75,
          width: 75,
          child: Image.asset(
            "assets/profile1.png",
            fit: BoxFit.fitHeight,
          ),
        ),
        title: Text(
          "Jenny Wilson",
          style: AppStyle.heading(AppStyle.textBlack),
        ),
      ),
    );
  }

  // Widget Function to Show the Description (Dummy Text) and HashTags for the Frame (Dummy Text)
  Widget _userTextAndTags(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: AppStyle.textWhite,
      child: Column(
        children: [
          //Dummy Text for description of Frame
          Text(
            "Lorem Ipsum is simply dummy text of printing and typesetting industry lorem ipsum news.",
            style: AppStyle.subHeading(AppStyle.grey),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0, horizontal: Get.width * 0.05),
            child:
                //Dummy text for hashtags of the frame
                Text(
              "#Organic  |  #ClassyAffair  |  #Multicolor  |  #Oversized  |  #Miminalism",
              style: AppStyle.subHeading(AppStyle.accentColor),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
