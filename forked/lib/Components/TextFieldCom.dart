import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Constants/styles.dart';

class TextFieldCom extends StatelessWidget {
  TextFieldCom(
      {super.key,
      this.hint_Text,
      this.borderColor,
      this.Controller,
      this.hintSize,
      required this.IconImage});

  final String? hint_Text;
  double? hintSize = 15;
  double? sizeOfIcon = 25;
  final String IconImage;
  final borderColor;
  final Controller;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 100, minHeight: 60),
      child: TextField(
        controller: Controller,
        maxLines: null,
        cursorColor: grey,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 6,
            ),
            child: Image.asset(
              IconImage, //it's uesd like this=> 'images/SearchIcon.png'
              width: sizeOfIcon,
              height: sizeOfIcon,
            ),
          ),
          prefixIconColor: grey,
          hintText: hint_Text,
          hintStyle: TextStyle(fontSize: hintSize),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: borderColor, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: borderColor, width: 3),
          ),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

