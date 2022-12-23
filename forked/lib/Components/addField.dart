import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/Camera.dart';
import 'package:forked/Components/TextFieldCom.dart';
import 'package:forked/Components/bsckGroundIcon.dart';
import 'package:forked/Constants/styles.dart';

class addFeild extends StatelessWidget {
  String? hint;

  TextEditingController textController;
  Function()? imageFunction;
  Function()? deletingFunction;

  addFeild(
      {super.key,
    
      this.deletingFunction,
      this.imageFunction,
      required this.textController}){
        
        if(imageFunction==null){
          hint="add ingredient";
        }else{
          hint ="add step";
        }


      
      }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: deletingFunction,
                      child: backgroundIcon(
                        height: 30,
                        circular: true,
                        backgroundColor: lightGreen,
                        centeredIcon: Icon(Icons.close),
                      ),
                    ),
                  ),
                ],
              )),
    Column(mainAxisSize: MainAxisSize.min, children: [
                imageFunction==null?SizedBox():  Container( margin: EdgeInsets.only(bottom: 16), child: myCamera(funct: imageFunction,)),


                  TextFieldCom(IconImage: "images/add.png", hint_Text: hint, Controller: textController),
                ]),
              
        ],
      ),
    );
  }
}
