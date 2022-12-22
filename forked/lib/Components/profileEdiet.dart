

import 'package:flutter/material.dart';
import 'package:forked/Components/CustomButton.dart';
import 'package:forked/Components/MyTextFeild.dart';
import 'package:forked/Constants/styles.dart';
import 'package:get/get.dart';

class ProfilEdiet extends StatelessWidget {
  const ProfilEdiet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(leading: IconButton
    (icon:Icon(Icons.arrow_back_ios,color:darkGreen), onPressed: () {  }
    ,),
    shadowColor: Colors.lightGreen,
    backgroundColor: Colors.white,
    elevation: 1,
    
     ),
     body: Column(
      
      children: [SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
       InkWell(child: Text('Cancel',style:h2 ,)),
       InkWell(child: Text('Done',style: h2,)),
      ],),
      SizedBox(height: 90,),

       Center(
         child: Container(
          height: 110,width: 110,
           child: ClipRRect(child:Image.network("https://freesvg.org/img/abstract-user-flat-4.png",
                     height: 110,width: 110,),borderRadius:
                      BorderRadius.circular(100),
                       ),
         ),
       ),
       SizedBox(height: 10,),
       // myButton(text: 'Chang Profil photo',backGroundColor: lightGreen,)
         Container(
         padding:EdgeInsets.all(20),
         decoration:BoxDecoration(
        
         borderRadius: BorderRadius.circular(100),
           ), 
                                    
         child: myButton(text: 'Change Profile Photo'
            ,backGroundColor: lightGreen,
            )
            ),
             Expanded(
    child: Container(
           width: Get.width,
           height: Get.height,
          alignment: Alignment.centerLeft,
         ),
 ),
 Expanded(flex: 1, child: myTextFeild( hint: "Yeni_genoa",
  icon: Icons.person_outline_rounded,)),


Expanded( child: myTextFeild(hint: "Example@gmail.com",
 icon: Icons.email,)),
 //ملاحظة التكست طويل جدا يختفي عن المستخدم فما يعرف ايش كتب بالبايو حقة

Expanded( child: myTextFeild(hint: "I am a stay-at-home mom (sounds better than recently retired, don't you think?)who loves to spend time in my kitchen",
 icon: Icons.border_inner,)),
   

                                

Expanded(
  flex: 4,
  child: Container())



     ]),

















    ) ;
    
        
    
  }
}
