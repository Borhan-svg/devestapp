import 'package:get/get.dart';

class SwitchImageController extends GetxController {
  bool firstImageVisible = false;

  void switchImages() {
    firstImageVisible = !firstImageVisible;
    update();
  }
}
