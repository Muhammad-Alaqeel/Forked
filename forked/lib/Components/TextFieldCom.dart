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
      this.initial_Value,
      required this.IconImage}) {
    if (borderColor == null) borderColor = lightGreen;
    if (sizeOfIcon == null) sizeOfIcon = 25;
  }
  final String? hint_Text;
  double? sizeOfIcon;
  final String IconImage;
  String? initial_Value;
  var borderColor;
  var Controller;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 100, minHeight: 60),
      child: TextFormField(
        initialValue: initial_Value,
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
