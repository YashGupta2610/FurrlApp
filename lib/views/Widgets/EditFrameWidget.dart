import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/EditFrameController.dart';

import '../../models/Frame Image Model.dart';

class EditingGrid extends StatelessWidget {
  EditingGrid({super.key,required this.element});

  FrameModel element ;


  // Widget for each Frame Image where gesture detector controls all 3 functions
  //1. Making the images move like a canvas collage manner
  //2. Resizing the images making them smaller or bigger by carefully pinching on the selected image with 2 fingures
  //3. Tapping on an image to make it come forward.
  //4. Added Extra - Double tapping on an image would bring the image to its original size.

  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<EditFrameController>(
          builder: (ctrl) {
            int index = ctrl.imgEditList.indexOf(element);
            return Positioned(

              top: element.yPosition,
              left: element.xPosition,child:
              GestureDetector(
                  trackpadScrollCausesScale: true,
                  onScaleUpdate: (ScaleUpdateDetails details){
                    //Point 1 - Making the pictures draggable
                    if(details.pointerCount == 1){
                      element.xPosition += details.focalPointDelta.dx;
                      element.yPosition += details.focalPointDelta.dy;
                      ctrl.update();
                    }
                    //Point 2 - making the images resizable
                    else if(details.pointerCount >= 2){
                      element.scale = element.scale * details.scale;

                      //Controlling the enlargement of the image so that it does not take the entire frame/collage
                      if(element.scale*details.scale > 2 ){
                        element.scale = 1.3;
                        ctrl.update();
                      }
                      //Controlling the reduction of the image size so that it is still visible in the frame/collage
                      if(element.scale < 0.5){
                        element.scale  = 0.8;
                        ctrl.update();
                      }
                    }

                  },
                  //Point 3 - Tapping on the image brings it forward
                  onTap: (){
                    if(ctrl.imgEditList.length-1 != index) {
                      ctrl.imgEditList.remove(element);
                      ctrl.imgEditList.insert(ctrl.imgEditList.length, element);
                      ctrl.editFrame();
                      ctrl.update();
                    }

                  },

                  //Point 4 - Bringing the image back to its original size
                  onDoubleTap: (){
                    element.scale =  1.0;
                    ctrl.update();
                  },
                  child: Transform.scale(
                      scale: element.scale,
                      child: Image.asset(element.img))),
            );
          }
      );

  }
}
