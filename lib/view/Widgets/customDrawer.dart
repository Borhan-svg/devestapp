import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
     HomeController homeController = Get.find();
    return Drawer(
      width: 250,
      child: Container(
        child: Column(
          children: [
            //LOGO
            Container(
              height: 100,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset('assets/LogoTwo.png' , height: 45,),
                  ),
                  Image.asset('assets/Calque 2.png')
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      homeController.switchToHome();
                      Get.back();
                    },
                    child: const Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      homeController.switchToAboutUs();
                      Get.back();
                    },
                    child: const Text(
                      'About Us',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
