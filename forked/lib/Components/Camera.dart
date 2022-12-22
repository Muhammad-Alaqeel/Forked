// ignore_for_file: prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:forked/Components/bsckGroundIcon.dart';
import 'package:forked/Constants/styles.dart';
import 'package:get/get.dart';

class myCamera extends StatelessWidget {
  String addI="";
  double? height;
  Function()? funct;
  myCamera({super.key, this.height, this.funct}) {
    addI="Add Image";
    if (height == null) {
      height = Get.height * (200 / 852);
    }
  

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funct,
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: lightGreen,
        radius: Radius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(bottom: Get.width * (172 / 393) / 8),
          width: Get.width * (172 / 393),
          height: height,
          child: Center(
              child: backgroundIcon(
            text: Text(
              addI.toString(),
              style: h2,
            ),
            height: 50,
            centeredIcon: Icon(
              Icons.camera_alt_outlined,
              size: 35,
            ),
          )),
        ),
      ),
    );
  }
}
