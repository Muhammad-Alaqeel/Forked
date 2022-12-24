
import 'package:flutter/material.dart';
import 'package:forked/Constants/styles.dart';


class myTextFeild extends StatelessWidget {
  IconData icon;
  String hint;
  TextEditingController? controller;
   myTextFeild({super.key, required this.icon,required this.hint, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(flex: 40,
            child: TextField(
              controller: controller,
              decoration:InputDecoration(
              
                hintText:hint ,
                prefixIcon: Icon(icon),
                border: InputBorder.none,
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(color: lightGreen,)),
          Expanded(
            flex: 25,
            child: Container())
        ],
      ),
    );
  }
}