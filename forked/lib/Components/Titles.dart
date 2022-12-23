import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Constants/styles.dart';
//هذا كمبونت ال view all

class Titles extends StatelessWidget {
  Titles({super.key, required this.text1, this.text2, this.funct}) {
    text2 == null ? text2 = "" : text2 = "See All";
  }
  String text1;
  var text2;
  Function()? funct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: htext,
          ),
          InkWell(
            child: Text(
              text2,
              style: underlineGreenText,
            ),
            onTap: funct,
          )
        ],
      ),
    );
  }
}
