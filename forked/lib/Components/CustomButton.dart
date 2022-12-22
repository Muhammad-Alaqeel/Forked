import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:forked/Constants/styles.dart';
class myButton extends StatelessWidget {
  Color? backGroundColor;
  String text;
   myButton({super.key, this.backGroundColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      padding:EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
      child: Center(child: Text(text, style: h2,)),

      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}