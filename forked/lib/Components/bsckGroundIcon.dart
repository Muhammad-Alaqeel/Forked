import 'package:flutter/material.dart';
class backgroundIcon extends StatelessWidget {
Widget? text;
double height;
Color? backgroundColor;
Widget? centeredIcon;
bool? circular;
double? border;
double? padding;

   backgroundIcon({super.key,this.circular, this.backgroundColor,this.centeredIcon,required this.height,this.text}){
     if(this.circular==true){
       this.border=200;
     }else{
       this.border=height*0.1587;
     }
     if(this.text==null){
       padding=0;
     }else{
       padding=8;
     }
   }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height:height ,
          width: height,
          margin: EdgeInsets.only(bottom: padding!),
          child: Center(
           child: centeredIcon,
          ),
          decoration: BoxDecoration(

            color: backgroundColor,

            borderRadius: BorderRadius.circular(border!)
            
          ),
        ),

      Container(
        child: text,)
       
      ],
    );
  }
}