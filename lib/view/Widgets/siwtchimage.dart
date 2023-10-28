import 'dart:async';

import 'package:devest_app/controller/switchimagecontoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSwitcher extends StatefulWidget {
  @override
  _ImageSwitcherState createState() => _ImageSwitcherState();
}

class _ImageSwitcherState extends State<ImageSwitcher> {
  late Timer timer;
  SwitchImageController switchImageController = Get.put(SwitchImageController());

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      Duration(seconds: 4),
      (timer) => switchImageController.switchImages()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GetBuilder<SwitchImageController>(
          builder: (controller) => AnimatedCrossFade(
              firstChild: Image.asset('assets/sliderone.png'),
              secondChild: Image.asset('assets/slidertwo.png'),
              crossFadeState: controller.firstImageVisible
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 600)),
        ));
  }
}
