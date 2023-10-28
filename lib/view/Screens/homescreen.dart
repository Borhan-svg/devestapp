
import 'package:devest_app/controller/homecontroller.dart';
import 'package:devest_app/view/ScaffoldBodies/aboutusbody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ScaffoldBodies/homebody.dart';
import '../Widgets/customDrawer.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) =>  SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF7F7F7),
          drawer: const CustomDrawer(),
          appBar: customAppBar(),
          body: homeController.bodyindex==1? HomeBody() : AboutUsBody() ,
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
    leading: Builder(builder: (context) {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.black));
    }),
    backgroundColor: const Color(0xFFF7F7F7),
    title: Image.asset('assets/Logo.png', fit: BoxFit.cover, height: 30),
    centerTitle: true,
    elevation: 0,
  );
  }


}

