//A model class to manage the image date easily and also change the position and size of the image.
class FrameModel {
  String img;
  double xPosition;
  double yPosition;
  double scale;

  FrameModel({this.img = "", this.xPosition=0.0,this.yPosition=0.0, this.scale = 1.0});
}