
import 'package:flutter/material.dart';
import 'package:forked/Components/MyTextFeild.dart';
import 'package:forked/Components/startingMessage.dart';
import 'package:forked/Constants/styles.dart';

import 'bsckGroundIcon.dart';
class icons extends StatelessWidget {
  const icons({super.key});
  
 //compoent Descripion of the recipe_9

  @override
  Widget build(BuildContext context) {
    return Column(
        
            children: [
         
           
               InkWell(
                 child: backgroundIcon(circular: true,
                     height: 36,backgroundColor:Colors.white,
                     centeredIcon: Icon(Icons.more_horiz),),
               ),
             
                 SizedBox(height: 10,),
                 
                    InkWell(
                      child: backgroundIcon(circular: true,
                                   height: 36,backgroundColor:Colors.white,
                                   centeredIcon: Icon(Icons.edit),),
                    ),
             
                     SizedBox(height: 10,),
       
              InkWell(
                child: backgroundIcon(circular: true,
                                   height: 36,backgroundColor:Colors.white,
                                   centeredIcon: Icon(Icons.delete),),
              )],
                 );
  }
}