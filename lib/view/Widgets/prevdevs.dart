import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart';

class PrevDevs extends StatelessWidget {
  PrevDevs({super.key});

  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Previous Devest\'s',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: List.generate(homeController.prevdev.length, (index) {
            return Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        homeController.prevdev[index]['image'],
                        height: 90,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            homeController.prevdev[index]['label'],
                            style: const TextStyle(
                                fontSize: 26,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(homeController.prevdev[index]['body'],
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          }),
        )
      ],
    );
  }
}
