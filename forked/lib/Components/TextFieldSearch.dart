import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Constants/styles.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key, this.hint, this.iconImage});
  final hint;
  final iconImage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                      cursorColor: grey,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(iconImage),
                        hintText: hint,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: grey, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: grey, width: 3),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                      ),
                    );
  }
}