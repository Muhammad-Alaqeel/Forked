import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:forked/Components/forgotPass.dart';
import 'package:forked/Components/sigIn.dart';
import 'package:forked/Components/signUp.dart';
import 'package:forked/Components/startingMessage.dart';
import 'package:forked/Controllers/RegisterationNavController.dart';

class whiteExpandableContainer extends StatelessWidget {

    double height;
    RegisterationController navController=Get.find();
     List<Widget>? pages;
   whiteExpandableContainer({super.key, required this.height}){
     print("$height");
     pages=[startingMessage(myController: navController),signIn(myController: navController,), signUp(myController: navController,),forgotPass()];

   }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: height,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),),
      ),
      child: GetBuilder<RegisterationController>(builder: (e){ return pages![navController.currentPage];})
      
      
    );
  }
}