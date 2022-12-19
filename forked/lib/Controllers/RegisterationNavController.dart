
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
  double height=(Get.height*(270/850));
  

  moveToLogin(){
    currentPage=1;
    height=(Get.height*(500/850));
    update();
  }

 moveToSignUp(){
    currentPage=2;
    height=(Get.height*(540/850));
    update();
  }

   moveToForgotPass(){
    currentPage=3;
    height=(Get.height*(240/850));
    update();
  }

}