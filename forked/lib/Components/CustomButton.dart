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
      padding:EdgeInsets.only(left: 35,right: 35,top: 8,bottom: 5),
      child: Text(text, style: h2,),

      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}