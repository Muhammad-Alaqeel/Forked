import 'package:flutter/material.dart';
import 'package:forked/Constants/styles.dart';

class picker extends StatelessWidget {
  int pickerIndex;
  String first, second, third;
  Color? color1, color2, color3;
  Function()? f1,f2,f3;
  picker(
      {super.key,
      this.f1,
      this.f2,
      this.f3,
      required this.first,
      required this.second,
      required this.third,
      required this.pickerIndex}) {
    if (pickerIndex == 0) {
      color1 = lightGreen;
      color2 = Colors.transparent;
      color3 = Colors.transparent;
    } else if (pickerIndex == 1) {
      color1 = Colors.transparent;
      color2 = lightGreen;
      color3 = Colors.transparent;
    } else {
      color1 = Colors.transparent;
      color2 = Colors.transparent;
      color3 = lightGreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 10,
          child: Material(
            child: InkWell(
              onTap: f1,
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 2.5,
                    color: color1!,
                  )),
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "$first",
                    style: h2,
                  ),
                ),
              ),
            ),
          ),
        ),



        Flexible(
          flex: 10,
          child: Material(
            child: InkWell(
              onTap: f2,
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 2.5,
                    color: color2!,
                  )),
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "$second",
                    style: h2,
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 13,
          child: Material(
            child: InkWell(
              onTap: f3,
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 2.5,
                    color: color3!,
                  )),
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "$third",
                    style: h2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
