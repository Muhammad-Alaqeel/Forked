import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:forked/Components/whiteExpandableContainer.dart';
import 'package:forked/Controllers/RegisterationNavController.dart';


class start extends StatelessWidget {
  RegisterationController registrationNav = Get.put(RegisterationController());
  start({super.key}) {
    print("${registrationNav.height}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset("images/startBackground.png")),
          ),
          GetBuilder<RegisterationController>(builder: (e) {
            return Container(
              alignment: Alignment.bottomCenter,
              height: Get.height,
              width: Get.width,
              child: whiteExpandableContainer(height: registrationNav.height),
            );
          }),
        ],
      ),
    );
  }
}
