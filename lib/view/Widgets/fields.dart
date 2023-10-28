import 'package:devest_app/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fields extends StatelessWidget {
  
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Fields',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: homeController.fields.length ,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        homeController.fields[index]['fieldicon'],
                        height: 35,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        homeController.fields[index]['fieldlabel'],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
