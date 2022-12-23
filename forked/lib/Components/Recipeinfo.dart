
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forked/Constants/styles.dart';
import 'package:get/get.dart';

class RecipeInfo extends StatelessWidget {
   RecipeInfo({super.key,required this.cal,required this.serving,required this.time});
 final String cal ;
 final String serving;
 final String time;



  @override
  Widget build(BuildContext context) {
    return
    //delete later
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //----------------first 
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                 height: Get.width /16 ,
                width: Get.width /16,
                        decoration:  BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("images/time.png"),
              fit: BoxFit.fill,
          )
        )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(time, style:h2),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical:2),
              child: Text("Mins", style: h4,),
            )

            
          ],),
          ///second
          Column(children: [
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: Container(
                
                 height: Get.width /16 ,
                  width: Get.width /16,
                              decoration:  BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("images/serving.png"),
              fit: BoxFit.fill,
          )
        ) 
    
            ),
             ),
            

            
             
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 6),
                 child: Text(serving, style:h2),
               ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical:2),
              child: Text("Serving", style: h4,),
            ),
          ],),

          ///third
          Column(children: [
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: Container(
                 height: Get.width /16 ,
                  width: Get.width /16,
                                decoration:  BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("images/cal.png",),
              fit: BoxFit.fill,
          )
        )

            ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 6),
               child: Text(cal, style:h2),
             ),


             Padding(
              padding: const EdgeInsets.symmetric(vertical:2),
              child: Text("Calories", style: h4,),
            ),
          ],)

        ],
      );
    
  }
}