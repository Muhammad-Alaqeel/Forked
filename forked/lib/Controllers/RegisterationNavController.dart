
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:forked/Components/forgotPass.dart';
import 'package:forked/Components/sigIn.dart';
import 'package:forked/Components/signUp.dart';
import 'package:forked/Components/startingMessage.dart';
import 'package:forked/Views/RegistrationNav.dart';

import '../Components/whiteExpandableContainer.dart';

class RegisterationController extends GetxController{
  int currentPage=0;
  double height=(Get.height*(350/850));
  

  moveToLogin(){
    currentPage=1;
    height=(Get.height*(600/850));
    update();
  }

 moveToSignUp(){
    currentPage=2;
    height=(Get.height*(640/850));
    update();
  }

   moveToForgotPass(){
    currentPage=3;
    height=(Get.height*(340/850));
    update();
  }

}