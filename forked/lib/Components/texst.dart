

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Constants/styles.dart';
//هذا كمبونت ال view all

class Texsthome extends StatelessWidget {
   String text1;
   String text2;
   Texsthome({super.key,required this.text1,required this.text2});
   
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height:50 ,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Text(text1,style:htext ,),
          Text(text2,style: underlineGreenText ,)
            

        ],
      ),
    );
  }
}
